local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/ggsq1741-debug/cQ/refs/heads/main/main.lua"))()
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = Workspace.CurrentCamera
local performM1 = game:GetService("ReplicatedStorage"):WaitForChild("performM1")

-- ================= 核心配置 =================
-- ESP 配置
local ESPEnabled = false
local ShowBox = true
local ShowTracer = true
local ShowDistance = true
local TracerFromTop = false 
local MaxDistance = 1000

-- 打击配置
local AuraEnabled = false
local TeleportEnabled = false 
local AuraRange = 99999      -- 全图无限索敌
local AttackCooldown = 0.05  -- 极速攻击间隔
local lastAttackTime = 0
local CurrentTarget = nil
local lastFindTime = 0

-- 玩家配置
local speedConn = nil
local currentSpeed = 1
local clipConn = nil

local ActiveESP = {}

-- ================= 玩家功能逻辑 =================
local function updateChar()
    local char = LocalPlayer.Character
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    if speedConn then
        speedConn:Disconnect()
        speedConn = nil
    end
    if not hum or currentSpeed <= 1 then return end
    speedConn = RunService.Heartbeat:Connect(function()
        if not LocalPlayer.Character then
            speedConn:Disconnect()
            speedConn = nil
            return
        end
        local h = LocalPlayer.Character.Humanoid
        if h.MoveDirection.Magnitude > 0 then
            LocalPlayer.Character:TranslateBy(h.MoveDirection * currentSpeed / 10)
        end
    end)
end
LocalPlayer.CharacterAdded:Connect(updateChar)
task.spawn(updateChar)

-- ================= UI 界面 =================
local Window = WindUI:CreateWindow({ Title = "不知道脚本叫啥", Folder = "DinoRiders", Theme = "Dark" })

local Tab1 = Window:Tab({ Title = "视觉透视", Icon = "eye" })
Tab1:Toggle({
    Title = "开启透视总开关",
    Default = false,
    Callback = function(state) ESPEnabled = state end
})
Tab1:Toggle({
    Title = "绘制 2D 方框",
    Default = true,
    Callback = function(state) ShowBox = state end
})
Tab1:Toggle({
    Title = "绘制 距离文字",
    Default = true,
    Callback = function(state) ShowDistance = state end
})
Tab1:Toggle({
    Title = "绘制 射线",
    Default = true,
    Callback = function(state) ShowTracer = state end
})
Tab1:Toggle({
    Title = "射线起点改为【顶部】",
    Default = false,
    Callback = function(state) TracerFromTop = state end
})
Tab1:Slider({
    Title = "最大可视距离",
    Value = {Min = 50, Max = 2000, Default = 1000},
    Step = 50,
    IsTextbox = true,
    Callback = function(val) MaxDistance = val end
})

local Tab2 = Window:Tab({ Title = "暴力打击", Icon = "sword" })
Tab2:Toggle({
    Title = "开启自动杀戮光环",
    Desc = "",
    Default = false,
    Callback = function(state) AuraEnabled = state end
})
Tab2:Toggle({
    Title = "开启贴脸传送",
    Desc = "",
    Default = true,
    Callback = function(state) TeleportEnabled = state end
})

-- === 新增玩家标签页 ===
local Tab3 = Window:Tab({ Title = "玩家", Icon = "users" })

Tab3:Slider({
    Title = "超级快跑",
    Desc = "",
    Value = {Min = 1, Max = 20, Default = 1}, -- 最高限制为20
    Step = 1,
    IsTextbox = true,
    Callback = function(val)
        -- 强制 clamp 限制在 1 到 20 之间
        currentSpeed = math.clamp(val, 1, 20)
        updateChar()
    end
})

Tab3:Toggle({
    Title = "穿墙",
    Desc = "",
    Default = false,
    Callback = function(enabled)
        if clipConn then
            clipConn:Disconnect()
            clipConn = nil
        end
        if enabled then
            clipConn = RunService.Stepped:Connect(function()
                local char = LocalPlayer.Character
                if not char then return end
                for _, part in ipairs(char:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end
            end)
        else
            local char = LocalPlayer.Character
            if char then
                for _, part in ipairs(char:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = true
                    end
                end
            end
        end
    end
})

-- ================= ESP 绘制逻辑 =================
local function createESP(npc)
    local highlight = Instance.new("Highlight")
    highlight.Adornee = npc
    highlight.FillColor = Color3.fromRGB(255, 50, 50)
    highlight.FillTransparency = 0.5
    highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
    highlight.OutlineTransparency = 0
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Parent = npc

    local distText = Drawing.new("Text")
    distText.Size = 13
    distText.Center = true
    distText.Outline = true
    distText.Color = Color3.fromRGB(255, 255, 0) 
    distText.Visible = false

    local box = Drawing.new("Square")
    box.Thickness = 1
    box.Color = Color3.fromRGB(255, 0, 0)
    box.Filled = false
    box.Visible = false

    local tracer = Drawing.new("Line")
    tracer.Thickness = 1
    tracer.Color = Color3.fromRGB(255, 0, 0)
    tracer.Visible = false

    return { Highlight = highlight, DistText = distText, Box = box, Tracer = tracer }
end

local function removeESP(data)
    if data.Highlight then data.Highlight:Destroy() end
    if data.DistText then data.DistText:Remove() end
    if data.Box then data.Box:Remove() end
    if data.Tracer then data.Tracer:Remove() end
end

RunService.RenderStepped:Connect(function()
    if not ESPEnabled then
        for npc, data in pairs(ActiveESP) do
            removeESP(data)
            ActiveESP[npc] = nil
        end
        return
    end

    for npc, data in pairs(ActiveESP) do
        if not npc.Parent or not npc:FindFirstChildOfClass("Humanoid") then
            removeESP(data)
            ActiveESP[npc] = nil
        end
    end

    for _, npc in ipairs(Workspace:GetDescendants()) do
        if npc:IsA("Model") and npc ~= LocalPlayer.Character then
            local hum = npc:FindFirstChildOfClass("Humanoid")
            if hum and hum.Health > 0 and not Players:GetPlayerFromCharacter(npc) then
                local root = npc:FindFirstChild("HumanoidRootPart") or npc:FindFirstChild("Head")
                
                if root then
                    local pos = root.Position
                    local dist = math.floor((Camera.CFrame.Position - pos).Magnitude)
                    
                    if dist <= MaxDistance then
                        if not ActiveESP[npc] then
                            ActiveESP[npc] = createESP(npc)
                        end
                        
                        local data = ActiveESP[npc]
                        local screenPos, onScreen = Camera:WorldToViewportPoint(pos)
                        
                        if onScreen then
                            local size = Vector3.new(4, 6, 2)
                            local success, boundSize = pcall(function() return npc:GetExtentsSize() end)
                            if success then size = boundSize end

                            local topLeft = Camera:WorldToViewportPoint(pos + Vector3.new(-size.X/2, size.Y/2, 0))
                            local bottomRight = Camera:WorldToViewportPoint(pos + Vector3.new(size.X/2, -size.Y/2, 0))
                            
                            local width = math.abs(bottomRight.X - topLeft.X)
                            local height = math.abs(bottomRight.Y - topLeft.Y)
                            local boxX = screenPos.X - (width/2)
                            local boxY = screenPos.Y - (height/2)

                            if ShowDistance then
                                data.DistText.Text = string.format("[%dm]", dist)
                                data.DistText.Position = Vector2.new(screenPos.X, boxY + height + 2)
                                data.DistText.Visible = true
                            else
                                data.DistText.Visible = false
                            end

                            if ShowBox then
                                data.Box.Size = Vector2.new(width + 4, height + 4)
                                data.Box.Position = Vector2.new(boxX - 2, boxY - 2)
                                data.Box.Visible = true
                            else
                                data.Box.Visible = false
                            end

                            if ShowTracer then
                                local startY = TracerFromTop and 0 or Camera.ViewportSize.Y
                                data.Tracer.From = Vector2.new(Camera.ViewportSize.X / 2, startY)
                                data.Tracer.To = Vector2.new(screenPos.X, screenPos.Y)
                                data.Tracer.Visible = true
                            else
                                data.Tracer.Visible = false
                            end
                        else
                            data.DistText.Visible = false
                            data.Box.Visible = false
                            data.Tracer.Visible = false
                        end
                    else
                        local data = ActiveESP[npc]
                        if data then
                            data.DistText.Visible = false
                            data.Box.Visible = false
                            data.Tracer.Visible = false
                            data.Highlight.Enabled = false
                        end
                    end
                end
            end
        end
    end
end)

-- ================= 暴力打击逻辑 =================
RunService.Heartbeat:Connect(function()
    if not AuraEnabled then return end

    local char = LocalPlayer.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then return end
    local myRoot = char.HumanoidRootPart

    if tick() - lastFindTime > 0.2 then
        lastFindTime = tick()
        local closestDist = AuraRange
        CurrentTarget = nil
        
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj:IsA("Model") and obj ~= char then
                local humanoid = obj:FindFirstChildOfClass("Humanoid")
                if humanoid and humanoid.Health > 0 then
                    local rootPart = obj:FindFirstChild("HumanoidRootPart") or humanoid.RootPart
                    if rootPart then
                        local dist = (rootPart.Position - myRoot.Position).Magnitude
                        if dist < closestDist then
                            local player = Players:GetPlayerFromCharacter(obj)
                            if not player or player.Team ~= LocalPlayer.Team then
                                closestDist = dist
                                CurrentTarget = obj
                            end
                        end
                    end
                end
            end
        end
    end

    if CurrentTarget then
        local targetHum = CurrentTarget:FindFirstChildOfClass("Humanoid")
        if not targetHum or targetHum.Health <= 0 then
            CurrentTarget = nil
            return
        end

        local enemyRoot = CurrentTarget:FindFirstChild("HumanoidRootPart") or CurrentTarget.PrimaryPart or CurrentTarget:FindFirstChild("Head")
        if enemyRoot then
            myRoot.CFrame = CFrame.lookAt(myRoot.Position, Vector3.new(enemyRoot.Position.X, myRoot.Position.Y, enemyRoot.Position.Z))

            if TeleportEnabled then
                myRoot.CFrame = CFrame.new(enemyRoot.Position - (myRoot.CFrame.LookVector * 2))
            end

            local tool = char:FindFirstChildOfClass("Tool")
            if tool then pcall(function() tool:Activate() end) end

            if tick() - lastAttackTime >= AttackCooldown then
                performM1:FireServer(nil)
                lastAttackTime = tick()
            end
        end
    end
end)