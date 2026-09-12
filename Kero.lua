-- This script was generated using MoonVeil 2.0.23 [https://moonveil.cc]
print=function()
end
warn=function()
end
printidentity=function()
end
local ReplicatedStorage=game:GetService"ReplicatedStorage"
print"[] \229\188\128\229\167\139\229\174\137\229\133\168\229\136\160\233\153\164\229\143\141\228\189\156\229\188\138\230\150\135\228\187\182..."
local deletedCount=0
local function deleteIfExists(parent,...)
    local obj=parent
    local parts={
        ...
    }
    for _,part in ipairs(parts)do
        if obj then
            obj=obj:FindFirstChild(part)
        else
            break
        end
    end
    if obj then
        pcall(function()
            obj:Destroy()
            deletedCount=deletedCount+1
            print("[] \229\136\160\233\153\164: "..obj:GetFullName())
        end)
        return true
    end
    return false
end
print" \229\136\160\233\153\164\229\143\141\228\189\156\229\188\138\230\160\184\229\191\131\230\150\135\228\187\182..."
deleteIfExists(ReplicatedStorage,"Shared","Core","RateLimiter")
deleteIfExists(ReplicatedStorage,"Vendor","ReplicaService","RateLimiter")
deleteIfExists(ReplicatedStorage,"Shared","Core","GetAsset")
deleteIfExists(ReplicatedStorage,"Client","Core","DebugTeleport")
deleteIfExists(ReplicatedStorage,"Client","Wanted","Modules","ClientPlayerFlags")
deleteIfExists(ReplicatedStorage,"Client","Wanted","Objects","DevvChassis","Components","Telemetry")
print" \229\136\160\233\153\164Cmdr\231\174\161\231\144\134\229\145\189\228\187\164\239\188\136\229\143\175\232\131\189\231\148\168\228\186\142\229\143\141\228\189\156\229\188\138\239\188\137..."
deleteIfExists(ReplicatedStorage,"CmdrClient")
deleteIfExists(ReplicatedStorage,"Vendor","Cmdr")
print" \229\136\160\233\153\164Report/Flag\231\155\184\229\133\179\239\188\136\228\184\190\230\138\165/\230\160\135\232\174\176\231\179\187\231\187\159\239\188\137..."
deleteIfExists(ReplicatedStorage,"Client","Wanted","UI","Screens","PhoneScreen","Apps","ReportApp")
deleteIfExists(ReplicatedStorage,"Client","Wanted","UI","Screens","DialogScreen","Dialogs","ReportDialog")
deleteIfExists(ReplicatedStorage,"Client","Wanted","Modules","ClientPlayerFlags","Flags")
deleteIfExists(ReplicatedStorage,"Shared","Wanted","Indicies","GameShopFlags")
print" \229\136\160\233\153\164\229\174\137\229\133\168\231\155\184\229\133\179UI..."
deleteIfExists(ReplicatedStorage,"Client","Wanted","UI","Screens","SecurityCameraScreen")
deleteIfExists(ReplicatedStorage,"Client","Assets","Guis","Screens","SecurityCameraScreen")
deleteIfExists(ReplicatedStorage,"Shared","Wanted","Indicies","FurnitureInteractions","Interactions","SecurityDesk")
deleteIfExists(ReplicatedStorage,"Shared","Wanted","Indicies","Objects","Props","World","SecurityDesk")
deleteIfExists(ReplicatedStorage,"Shared","Wanted","Indicies","FurnitureInteractions","Interactions","SecurityCamera")
deleteIfExists(ReplicatedStorage,"Shared","Wanted","Indicies","Objects","Props","World","SecurityShutter")
print" \229\136\160\233\153\164\229\143\141\228\189\156\229\188\138Remote..."
local function deleteRemote(parent,name)
    if parent then
        local obj=parent:FindFirstChild(name)
        if obj and(obj:IsA"RemoteEvent"or obj:IsA"RemoteFunction")then
            pcall(function()
                obj:Destroy()
                deletedCount=deletedCount+1
                print("[] \229\136\160\233\153\164Remote: "..obj:GetFullName())
            end)
        end
    end
end
local function scanAndDeleteRemotes()
    local keywords={
        "anticheat",
        "exploit",
        "cheat",
        "hack",
        "detect",
        "ban",
        "flag",
        "violation"
    }
    for _,obj in ipairs(ReplicatedStorage:GetDescendants())do
        if obj:IsA"RemoteEvent"or obj:IsA"RemoteFunction"then
            local name=string.lower(obj.Name)
            for _,kw in ipairs(keywords)do
                if string.find(name,kw,1,true)then
                    pcall(function()
                        obj:Destroy()
                        deletedCount=deletedCount+1
                        print("[] \229\136\160\233\153\164Remote: "..obj:GetFullName())
                    end)
                    break
                end
            end
        end
    end
end
scanAndDeleteRemotes()
print"\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144"
print"[\226\156\133] \229\136\160\233\153\164\229\174\140\230\136\144\239\188\129"
print("   \240\159\147\138 \229\133\177\229\136\160\233\153\164 "..deletedCount.." \228\184\170\229\143\141\228\189\156\229\188\138\230\150\135\228\187\182")
print"   \226\154\160\239\184\143 \230\184\184\230\136\143\229\138\159\232\131\189\230\150\135\228\187\182\230\156\170\229\143\151\229\189\177\229\147\141"
print"\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144\226\149\144"
_G.SafeDelete={
    Run=function()
        print"[\240\159\148\167] \233\135\141\230\150\176\230\137\167\232\161\140\229\136\160\233\153\164..."
        deletedCount=0
        print"[\226\156\133] \229\174\140\230\136\144"
    end
}
print"[\240\159\146\161] \229\166\130\230\158\156\230\140\137\233\148\174\232\162\171\229\136\160\239\188\140\233\135\141\230\150\176\229\138\160\229\133\165\230\184\184\230\136\143\229\141\179\229\143\175\230\129\162\229\164\141"
local ChronixUI=loadstring(game:HttpGet"https://raw.atomgit.com/Furrycalin/ChronixHub/raw/main/modules/ChronixUI%20Lib.lua")()
local Window=ChronixUI:CreateWindow{
    Name="\230\184\175\231\140\171\231\154\132\233\128\154\231\188\137Wanted"
}
local function addToggle(tab,label,default,callback)
    if pcall(function()
        tab:AddToggle{
            Label=label,
            Default=default,
            Callback=callback
        }
    end)then
        return
    end
    pcall(function()
        tab:Toggle{
            Title=label,
            Value=default,
            Callback=callback
        }
    end)
end
local function addSlider(tab,label,min,max,default,step,callback)
    if pcall(function()
        tab:AddSlider{
            Label=label,
            Min=min,
            Max=max,
            Default=default,
            Step=step,
            Callback=callback
        }
    end)then
        return
    end
    pcall(function()
        tab:Slider{
            Title=label,
            Value={
                Min=min,
                Max=max,
                Default=default
            },
            Step=step,
            Callback=callback
        }
    end)
end
local function addButton(tab,text,callback)
    if pcall(function()
        tab:AddButton{
            Text=text,
            Callback=callback
        }
    end)then
        return
    end
    pcall(function()
        tab:Button{
            Title=text,
            Callback=callback
        }
    end)
end
local function addInput(tab,label,placeholder,default,callback)
    if pcall(function()
        tab:AddInput{
            Label=label,
            Placeholder=placeholder,
            Default=default,
            Callback=callback
        }
    end)then
        return
    end
    pcall(function()
        tab:Input{
            Title=label,
            Placeholder=placeholder,
            Default=default,
            Callback=callback
        }
    end)
end
local function addDropdown(tab,label,values,default,callback)
    if pcall(function()
        tab:AddDropdown{
            Label=label,
            Values=values,
            Default=default,
            Callback=callback
        }
    end)then
        return
    end
    pcall(function()
        tab:Dropdown{
            Title=label,
            Values=values,
            Default=default,
            Callback=callback
        }
    end)
end
local Players=game:GetService"Players"
local RunService=game:GetService"RunService"
local UserInputService=game:GetService"UserInputService"
local LocalPlayer=Players.LocalPlayer
local Camera=workspace.CurrentCamera
local Tabs={
    wj=Window:CreateTab{
        Name="\231\142\169\229\174\182",
        HasIcon=true,
        IconName="users",
        IconType="lucide"
    },
    jx=Window:CreateTab{
        Name="\232\191\156\231\168\139\229\135\187\230\157\128+\233\155\183\232\190\190",
        HasIcon=true,
        IconName="crown",
        IconType="lucide"
    },
    bot=Window:CreateTab{
        Name="\231\158\132\229\135\134",
        HasIcon=true,
        IconName="target",
        IconType="lucide"
    },
    ESP=Window:CreateTab{
        Name="ESP",
        HasIcon=true,
        IconName="eye",
        IconType="lucide"
    },
    ESPP=Window:CreateTab{
        Name="ESP2",
        HasIcon=true,
        IconName="eye",
        IconType="lucide"
    },
    wb=Window:CreateTab{
        Name="ESP\231\137\169\229\147\129",
        HasIcon=true,
        IconName="box",
        IconType="lucide"
    },
    qq=Window:CreateTab{
        Name="\229\136\160\233\153\164",
        HasIcon=true,
        IconName="trash-2",
        IconType="lucide"
    },
    rsao=Window:CreateTab{
        Name="\229\168\177\228\185\144\229\138\159\232\131\189",
        HasIcon=true,
        IconName="zap",
        IconType="lucide"
    },
    gm=Window:CreateTab{
        Name="\232\180\173\228\185\176",
        HasIcon=true,
        IconName="shopping-cart",
        IconType="lucide"
    }
}
local function getCharacter()
    if LocalPlayer and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild"Humanoid"then
        return LocalPlayer.Character
    end
end
local isInfiniteJumpEnabled=false
UserInputService.JumpRequest:Connect(function()
    if isInfiniteJumpEnabled then
        local character=getCharacter()
        if character then
            local humanoid=character:FindFirstChildOfClass"Humanoid"
            if humanoid then
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end
end)
local speedConn,currentSpeed=nil,1
local function updateChar()
    local char=LocalPlayer.Character
    local hum=char and char:FindFirstChildOfClass"Humanoid"
    if speedConn then
        speedConn:Disconnect()
        speedConn=nil
    end
    if not hum or currentSpeed<=1 then
        return
    end
    speedConn=RunService.Heartbeat:Connect(function()
        if not LocalPlayer.Character then
            speedConn:Disconnect()
            speedConn=nil
            return
        end
        local h=LocalPlayer.Character.Humanoid
        if h.MoveDirection.Magnitude>0 then
            LocalPlayer.Character:TranslateBy(h.MoveDirection*currentSpeed/10)
        end
    end)
end
LocalPlayer.CharacterAdded:Connect(updateChar)
task.spawn(updateChar)
addInput(Tabs.wj,"\232\182\133\231\186\167\229\191\171\232\183\145 (\232\190\147\229\133\165\49~200\230\149\176\229\173\151)","1~200","1",function(val)
    local num=tonumber(val)
    if not num then
        return
    end
    currentSpeed=math.clamp(num,1,200)
    updateChar()
end)
addSlider(Tabs.wj,"\232\182\133\231\186\167\229\191\171\232\183\145(\230\187\145\229\157\151)",1,200,1,1,function(val)
    currentSpeed=val
    updateChar()
end)
local isWarpFlying,flySpeed=false,50
local hrp,hum
local ControlModule=require(LocalPlayer.PlayerScripts:WaitForChild"PlayerModule"):GetControls()
local originalCanCollide={}
local diedConn
local function clearFlyRes()
    pcall(function()
        for part,state in pairs(originalCanCollide)do
            if part and part.Parent then
                part.CanCollide=state
            end
        end
        table.clear(originalCanCollide)
        if diedConn then
            diedConn:Disconnect()
        end
        if hrp and hum then
            hum:ChangeState(Enum.HumanoidStateType.Running)
        end
    end)
end
local function microStepLoop()
    local targetPos=hrp.Position
    local lastTime=tick()
    while isWarpFlying do
        local now=tick()
        local dt=now-lastTime
        lastTime=now
        local mv=ControlModule:GetMoveVector()
        local cf=Camera.CFrame
        local moveDir=(cf.LookVector*-mv.Z)+(cf.RightVector*mv.X)
        local vertical=0
        if UserInputService:IsKeyDown(Enum.KeyCode.Space)then
            vertical=1
        elseif UserInputService:IsKeyDown(Enum.KeyCode.LeftControl)then
            vertical=-1
        end
        targetPos+=(moveDir+Vector3 .new(0,vertical,0))*flySpeed*dt
        local currentPos=hrp.Position
        local remaining=targetPos-currentPos
        local distance=remaining.Magnitude
        if distance>0 then
            local steps=math.ceil(distance/10)
            local stepVec=remaining/steps
            for i=1,steps do
                if not isWarpFlying then
                    break
                end
                currentPos+=stepVec
                hrp.CFrame=CFrame.new(currentPos)*hrp.CFrame.Rotation
                hrp.Velocity=Vector3 .zero
            end
        end
        hum:ChangeState(Enum.HumanoidStateType.Climbing)
        task.wait(0.001)
    end
end
local function healthLockLoop()
    while isWarpFlying do
        if hum and hum.Health<hum.MaxHealth then
            hum.Health=hum.MaxHealth
        end
        RunService.Heartbeat:Wait()
    end
end
local function startWarpFly()
    if isWarpFlying then
        return
    end
    local char=LocalPlayer.Character
    if not char then
        return
    end
    hrp=char:FindFirstChild"HumanoidRootPart"
    hum=char:FindFirstChild"Humanoid"
    if not hrp or not hum then
        return
    end
    for _,part in ipairs(char:GetDescendants())do
        if part:IsA"BasePart"then
            originalCanCollide[part]=part.CanCollide
            part.CanCollide=false
        end
    end
    isWarpFlying=true
    hum:ChangeState(Enum.HumanoidStateType.Climbing)
    task.spawn(microStepLoop)
    task.spawn(healthLockLoop)
    diedConn=hum.Died:Connect(function()
        if hum and isWarpFlying then
            hum.Health=hum.MaxHealth
            hum:ChangeState(Enum.HumanoidStateType.Running)
        end
    end)
end
local function stopWarpFly()
    isWarpFlying=false
    clearFlyRes()
end
addToggle(Tabs.wj,"\231\129\181\233\173\130\233\163\158\232\161\140 (\230\128\157\232\183\175\230\157\165\232\135\170AF\228\189\156\232\128\133\231\167\139\232\190\158\226\157\164\239\184\143)",false,function(v)
    if v then
        startWarpFly()
    else
        stopWarpFly()
    end
end)
addSlider(Tabs.wj,"\233\163\158\232\161\140\233\128\159\229\186\166",10,130,50,1,function(val)
    flySpeed=val
end)
local SpinEnabled,SpinSpeed=false,5
local SpinConnection=nil
local function StartSpin()
    if SpinConnection then
        return
    end
    SpinConnection=RunService.RenderStepped:Connect(function(dt)
        if not SpinEnabled then
            return
        end
        local char=LocalPlayer.Character
        if not char then
            return
        end
        local hrp2=char:FindFirstChild"HumanoidRootPart"
        if not hrp2 then
            return
        end
        hrp2 .CFrame=hrp2 .CFrame*CFrame.Angles(0,math.rad(SpinSpeed)*dt*60,0)
    end)
end
local function StopSpin()
    SpinEnabled=false
    if SpinConnection then
        SpinConnection:Disconnect()
        SpinConnection=nil
    end
end
LocalPlayer.CharacterAdded:Connect(function()
    if SpinEnabled then
        task.wait(0.5)
        StartSpin()
    end
end)
addToggle(Tabs.wj,"\228\186\186\231\137\169\232\135\170\232\189\172",false,function(v)
    SpinEnabled=v
    if v then
        StartSpin()
    else
        StopSpin()
    end
end)
addSlider(Tabs.wj,"\230\151\139\232\189\172\233\128\159\229\186\166",1,200,5,5,function(v)
    SpinSpeed=v
end)
local HeadScaler={
    enabled=false,
    headSize=1,
    heartbeatConn=nil,
    playerAddedConn=nil,
    charBindings={}
}
function HeadScaler:UpdateAllHeads()
    local size=Vector3 .new(self.headSize,self.headSize,self.headSize)
    for _,p in ipairs(Players:GetPlayers())do
        if p~=LocalPlayer and p.Character then
            local head=p.Character:FindFirstChild"Head"
            if head then
                pcall(function()
                    head.Size=size
                    head.CanCollide=false
                end)
            end
        end
    end
end
function HeadScaler:BindPlayer(player)
    if self.charBindings[player]then
        return
    end
    self.charBindings[player]=player.CharacterAdded:Connect(function()
        task.wait(0.15)
        self:UpdateAllHeads()
    end)
end
function HeadScaler:ClearAll()
    if self.heartbeatConn then
        self.heartbeatConn:Disconnect()
        self.heartbeatConn=nil
    end
    if self.playerAddedConn then
        self.playerAddedConn:Disconnect()
        self.playerAddedConn=nil
    end
    for p,c in pairs(self.charBindings)do
        c:Disconnect()
        self.charBindings[p]=nil
    end
end
function HeadScaler:SetEnabled(enable)
    if self.enabled==enable then
        return
    end
    self:ClearAll()
    self.enabled=enable
    if not enable then
        return
    end
    self.heartbeatConn=RunService.Heartbeat:Connect(function()
        self:UpdateAllHeads()
    end)
    for _,p in ipairs(Players:GetPlayers())do
        if p~=LocalPlayer then
            self:BindPlayer(p)
        end
    end
    self.playerAddedConn=Players.PlayerAdded:Connect(function(p)
        if p~=LocalPlayer then
            self:BindPlayer(p)
        end
    end)
    self:UpdateAllHeads()
end
function HeadScaler:SetSize(newSize)
    self.headSize=math.clamp(newSize,1,5000)
    if self.enabled then
        self:UpdateAllHeads()
    end
end
Players.PlayerRemoving:Connect(function(p)
    if HeadScaler.charBindings[p]then
        HeadScaler.charBindings[p]:Disconnect()
        HeadScaler.charBindings[p]=nil
    end
end)
addToggle(Tabs.wj,"\228\191\174\230\148\185\229\136\171\228\186\186\229\164\180\233\131\168\229\164\167\229\176\143(\228\187\133\230\156\172\229\156\176)",false,function(v)
    HeadScaler:SetEnabled(v)
end)
addInput(Tabs.wj,"\229\136\171\228\186\186\229\164\180\233\131\168\229\176\186\229\175\184 (1-5000)","1","1",function(v)
    local n=tonumber(v)
    if n then
        HeadScaler:SetSize(n)
    end
end)
addToggle(Tabs.wj,"\230\151\160\233\153\144\232\183\179",false,function(s)
    isInfiniteJumpEnabled=s
end)
local clipConn=nil
addToggle(Tabs.wj,"\231\169\191\229\162\153",false,function(enabled)
    if clipConn then
        clipConn:Disconnect()
        clipConn=nil
    end
    if enabled then
        clipConn=RunService.Stepped:Connect(function()
            local char=LocalPlayer.Character
            if not char then
                return
            end
            for _,part in ipairs(char:GetChildren())do
                if part:IsA"BasePart"then
                    part.CanCollide=false
                end
            end
        end)
    else
        local char=LocalPlayer.Character
        if char then
            for _,part in ipairs(char:GetChildren())do
                if part:IsA"BasePart"then
                    part.CanCollide=true
                end
            end
        end
    end
end)
addButton(Tabs.wj,"\232\184\143\231\169\186\232\161\140\232\181\176",function()
    loadstring(game:HttpGet"https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float")()
end)
addButton(Tabs.wj,"\229\174\154 (\231\169\186\228\184\173\229\174\154\228\189\143)",function()
    local player=LocalPlayer
    local freeze,lockY=false,nil
    local character,root
    local function LoadCharacter()
        character=player.Character or player.CharacterAdded:Wait()
        root=character:WaitForChild"HumanoidRootPart"
    end
    LoadCharacter()
    player.CharacterAdded:Connect(function()
        task.wait(1)
        LoadCharacter()
    end)
    local gui=Instance.new"ScreenGui"
    gui.Name="AirFreezeUI"
    gui.ResetOnSpawn=false
    gui.Parent=player:WaitForChild"PlayerGui"
    local main=Instance.new"Frame"
    main.Size=UDim2 .new(0,90,0,90)
    main.Position=UDim2 .new(0.5,-70,0.65,0)
    main.BackgroundColor3=Color3 .fromRGB(25,25,30)
    main.Parent=gui
    local c=Instance.new"UICorner"
    c.CornerRadius=UDim.new(0,12)
    c.Parent=main
    local title=Instance.new"TextLabel"
    title.Size=UDim2 .new(1,0,0,26)
    title.BackgroundTransparency=1
    title.Text="\229\174\154"
    title.TextColor3=Color3 .new(1,1,1)
    title.TextSize=16
    title.Parent=main
    local btn=Instance.new"TextButton"
    btn.Size=UDim2 .new(0,100,0,32)
    btn.Position=UDim2 .new(0.5,-50,0.48,0)
    btn.BackgroundColor3=Color3 .fromRGB(0,170,255)
    btn.Text="\229\188\128\229\144\175"
    btn.TextColor3=Color3 .new(1,1,1)
    btn.TextSize=14
    btn.Parent=main
    local tc=Instance.new"UICorner"
    tc.CornerRadius=UDim.new(0,8)
    tc.Parent=btn
    btn.MouseButton1Click:Connect(function()
        freeze=not freeze
        if freeze then
            btn.Text="\229\133\179\233\151\173"
            btn.BackgroundColor3=Color3 .fromRGB(255,70,70)
            if root then
                lockY=root.Position.Y
            end
        else
            btn.Text="\229\188\128\229\144\175"
            btn.BackgroundColor3=Color3 .fromRGB(0,170,255)
            lockY=nil
        end
    end)
    RunService.Heartbeat:Connect(function()
        if freeze and root and lockY then
            local pos=root.Position
            root.AssemblyLinearVelocity=Vector3 .zero
            root.AssemblyAngularVelocity=Vector3 .zero
            root.CFrame=CFrame.new(pos.X,lockY,pos.Z)*root.CFrame.Rotation
        end
    end)
end)
addButton(Tabs.jx,"\232\191\156\231\168\139\228\188\160\233\128\129\229\135\187\230\157\128",function()
    loadstring(game:HttpGet"https://raw.githubusercontent.com/ggsq1741-debug/cQ/refs/heads/main/%E8%BF%9C%E7%A8%8B%E5%87%BB%E6%9D%80.lua")()
end)
addButton(Tabs.jx,"\229\188\128\229\144\175\233\155\183\232\190\190\230\137\171\230\143\143\226\154\160\239\184\143",function()
    loadstring(game:HttpGet"https://raw.githubusercontent.com/ggsq1741-debug/cQ/refs/heads/main/%E9%9B%B7%E8%BE%BE%E6%89%AB%E6%8F%8F.lua")()
end)
local AimConfig={
    Enabled=false,
    BulletTrack=false,
    FOV=200,
    Smoothness=0.15,
    Prediction=0.12,
    BulletSpeed=1500,
    BulletDrop=0,
    WallCheck=true,
    ShowFOV=false,
    ShowTracer=true,
    AimPart="Head",
    TeamCheck=true,
    JumpPrediction=true
}
local aimFOVCircle=Drawing.new"Circle"
aimFOVCircle.Visible=false
aimFOVCircle.Color=Color3 .fromRGB(255,50,50)
aimFOVCircle.Thickness=1.5
aimFOVCircle.Filled=false
aimFOVCircle.Transparency=0.4
aimFOVCircle.NumSides=64
aimFOVCircle.Radius=AimConfig.FOV
aimFOVCircle.Position=Camera.ViewportSize/2
local aimTracer=Drawing.new"Line"
aimTracer.Visible=false
aimTracer.Color=Color3 .fromRGB(255,50,50)
aimTracer.Thickness=1.5
aimTracer.Transparency=0.4
aimTracer.From=Camera.ViewportSize/2
aimTracer.To=Camera.ViewportSize/2
local aimTargetPart,mainConn=nil,nil
local function findClosestPlayer()
    local center=Camera.ViewportSize/2
    local best,bestDist=nil,AimConfig.FOV
    for _,player in ipairs(Players:GetPlayers())do
        if player~=LocalPlayer and player.Character then
            local humanoid=player.Character:FindFirstChildOfClass"Humanoid"
            local hrpX=player.Character:FindFirstChild"HumanoidRootPart"
            if humanoid and hrpX and humanoid.Health>0 then
                if not(AimConfig.TeamCheck and player.Team and player.Team==LocalPlayer.Team)then
                    local part=player.Character:FindFirstChild(AimConfig.AimPart)or player.Character:FindFirstChild"Head"or hrpX
                    if part then
                        local sp,vis=Camera:WorldToViewportPoint(part.Position)
                        if vis and sp.Z<1000 then
                            local sd=(Vector2 .new(sp.X,sp.Y)-Vector2 .new(center.X,center.Y)).Magnitude
                            if sd<bestDist then
                                best,bestDist=part,sd
                            end
                        end
                    end
                end
            end
        end
    end
    return best
end
local function isWallHit(part)
    if not AimConfig.WallCheck then
        return false
    end
    local origin=Camera.CFrame.Position
    local rayP=RaycastParams.new()
    rayP.FilterType=Enum.RaycastFilterType.Exclude
    rayP.FilterDescendantsInstances={
        LocalPlayer.Character,
        Camera
    }
    local result=workspace:Raycast(origin,part.Position-origin,rayP)
    if result and not result.Instance:IsDescendantOf(part.Parent)then
        return true
    end
    return false
end
local function doCameraAim()
    if not aimTargetPart or not aimTargetPart.Parent then
        return
    end
    local humX=aimTargetPart.Parent:FindFirstChildOfClass"Humanoid"
    if not humX or humX.Health<=0 then
        return
    end
    if isWallHit(aimTargetPart)then
        return
    end
    local dist=(aimTargetPart.Position-Camera.CFrame.Position).Magnitude
    local time=dist/math.max(AimConfig.BulletSpeed,100)
    local vel=Vector3 .zero
    local tHrp=aimTargetPart.Parent:FindFirstChild"HumanoidRootPart"
    if tHrp then
        vel=tHrp.AssemblyLinearVelocity
    end
    local predictPos=aimTargetPart.Position+vel*AimConfig.Prediction
    local dropOffset=Vector3 .new(0,-AimConfig.BulletDrop*time*time,0)
    local jumpOff=Vector3 .zero
    if AimConfig.JumpPrediction and tHrp and tHrp.AssemblyLinearVelocity.Y>10 then
        jumpOff=Vector3 .new(0,tHrp.AssemblyLinearVelocity.Y*AimConfig.Prediction*0.5,0)
    end
    local targetPos=predictPos+dropOffset+jumpOff
    local targetCF=CFrame.new(Camera.CFrame.Position,targetPos)
    if AimConfig.Smoothness>=1 then
        Camera.CFrame=targetCF
    else
        Camera.CFrame=Camera.CFrame:Lerp(targetCF,AimConfig.Smoothness)
    end
end
addToggle(Tabs.bot,"\240\159\142\175 \232\135\170\231\158\132\230\128\187\229\188\128\229\133\179",false,function(state)
    AimConfig.Enabled=state
    if state then
        if not mainConn then
            mainConn=RunService.RenderStepped:Connect(function()
                if not AimConfig.Enabled then
                    aimTargetPart=nil
                    aimFOVCircle.Visible=false
                    aimTracer.Visible=false
                    return
                end
                aimFOVCircle.Position=Camera.ViewportSize/2
                aimFOVCircle.Radius=AimConfig.FOV
                aimFOVCircle.Visible=AimConfig.ShowFOV
                aimTargetPart=findClosestPlayer()
                doCameraAim()
                if aimTargetPart and aimTargetPart.Parent then
                    local sp,vis=Camera:WorldToViewportPoint(aimTargetPart.Position)
                    if vis then
                        aimTracer.Visible=AimConfig.ShowTracer
                        aimTracer.From=Camera.ViewportSize/2
                        aimTracer.To=Vector2 .new(sp.X,sp.Y)
                    else
                        aimTracer.Visible=false
                    end
                else
                    aimTracer.Visible=false
                end
            end)
        end
    else
        if mainConn then
            mainConn:Disconnect()
            mainConn=nil
        end
        aimTargetPart=nil
        aimFOVCircle.Visible=false
        aimTracer.Visible=false
    end
end)
local btHbSize=8
local btHbConn=nil
local function btExpandPlayer(player)
    if player==LocalPlayer then
        return
    end
    if AimConfig.TeamCheck and player.Team and player.Team==LocalPlayer.Team then
        return
    end
    local char=player.Character
    if not char then
        return
    end
    local humanoid=char:FindFirstChildOfClass"Humanoid"
    if not humanoid or humanoid.Health<=0 then
        return
    end
    local hrpX=char:FindFirstChild"HumanoidRootPart"
    if not hrpX then
        return
    end
    local size=math.clamp(btHbSize,0,100)
    pcall(function()
        hrpX.Size=Vector3 .new(size,size,size)
        hrpX.Transparency=0.85
        hrpX.Color=Color3 .fromRGB(190,190,190)
        hrpX.Material=Enum.Material.Neon
        hrpX.CanCollide=false
    end)
end
local function btResetPlayer(player)
    local char=player.Character
    if not char then
        return
    end
    local hrpX=char:FindFirstChild"HumanoidRootPart"
    if not hrpX then
        return
    end
    pcall(function()
        hrpX.Size=Vector3 .new(2,2,1)
        hrpX.Transparency=0
        hrpX.Color=Color3 .fromRGB(163,162,165)
        hrpX.Material=Enum.Material.Plastic
        hrpX.CanCollide=true
    end)
end
addToggle(Tabs.bot,"\240\159\146\163 \229\173\144\229\188\185\232\191\189\232\184\170\230\128\187\229\188\128\229\133\179",false,function(state)
    AimConfig.BulletTrack=state
    if state then
        if not btHbConn then
            btHbConn=RunService.Heartbeat:Connect(function()
                if AimConfig.BulletTrack then
                    for _,p in ipairs(Players:GetPlayers())do
                        btExpandPlayer(p)
                    end
                end
            end)
        end
        for _,player in ipairs(Players:GetPlayers())do
            if player~=LocalPlayer then
                player.CharacterAdded:Connect(function()
                    task.wait(1)
                    if AimConfig.BulletTrack then
                        btExpandPlayer(player)
                    end
                end)
            end
        end
    else
        if btHbConn then
            btHbConn:Disconnect()
            btHbConn=nil
        end
        for _,p in ipairs(Players:GetPlayers())do
            btResetPlayer(p)
        end
    end
end)
addSlider(Tabs.bot,"\240\159\147\166 \229\136\164\229\174\154\231\174\177\229\164\167\229\176\143",0,100,8,1,function(v)
    btHbSize=v
end)
addSlider(Tabs.bot,"\240\159\142\175 \232\135\170\231\158\132FOV\232\140\131\229\155\180",20,1000,200,10,function(v)
    AimConfig.FOV=v
    aimFOVCircle.Radius=v
end)
addSlider(Tabs.bot,"\240\159\148\152 \229\185\179\230\187\145\231\179\187\230\149\176",0.01,1,0.15,0.01,function(v)
    AimConfig.Smoothness=v
end)
addSlider(Tabs.bot,"\226\154\161 \233\162\132\229\136\164\229\188\186\229\186\166",0,1,0.12,0.01,function(v)
    AimConfig.Prediction=v
end)
addSlider(Tabs.bot,"\240\159\148\171 \229\173\144\229\188\185\233\128\159\229\186\166",100,5000,1500,50,function(v)
    AimConfig.BulletSpeed=v
end)
addSlider(Tabs.bot,"\240\159\147\137 \229\188\185\233\129\147\228\184\139\229\157\160\232\161\165\229\129\191",0,200,0,1,function(v)
    AimConfig.BulletDrop=v
end)
addDropdown(Tabs.bot,"\240\159\142\175 \231\158\132\229\135\134\233\131\168\228\189\141",{
    "Head",
    "HumanoidRootPart",
    "UpperTorso",
    "LowerTorso"
},"Head",function(o)
    AimConfig.AimPart=o
end)
addToggle(Tabs.bot,"\240\159\167\177 \230\142\169\228\189\147\229\136\164\230\150\173",true,function(s)
    AimConfig.WallCheck=s
end)
addToggle(Tabs.bot,"\226\173\149 \230\152\190\231\164\186FOV\229\156\134\229\156\136",false,function(s)
    AimConfig.ShowFOV=s
end)
addToggle(Tabs.bot,"\240\159\147\143 \230\152\190\231\164\186\232\135\170\231\158\132\229\176\132\231\186\191",true,function(s)
    AimConfig.ShowTracer=s
end)
addToggle(Tabs.bot,"\240\159\145\165 \229\140\186\229\136\134\233\152\159\229\143\139",true,function(s)
    AimConfig.TeamCheck=s
end)
addToggle(Tabs.bot,"\240\159\166\152 \232\183\179\232\183\131\233\162\132\229\136\164",true,function(s)
    AimConfig.JumpPrediction=s
end)
ESP_Config={
    EnableESP=false,
    ShowBox=true,
    ShowHealth=true,
    ShowName=true,
    ShowDistance=true,
    ShowTracer=false,
    ShowSkeleton=false,
    ShowWeapon=false,
    WallHack=false,
    TeamCheck=false,
    MaxDrawDistance=350,
    BoxThickness=1,
    TracerThickness=1,
    SkeletonThickness=2,
    EnemyColor=Color3 .new(1,0.3,0.3),
    TeammateColor=Color3 .new(0.3,1,0.3),
    NPCColor=Color3 .new(1,1,0.2),
    BoxColor=Color3 .new(1,1,1),
    TracerColor=Color3 .new(1,0,0),
    SkeletonColor=Color3 .new(0.2,0.8,1),
    HealthBarColor=Color3 .new(0,1,0)
}
local ESPComponents={}
local function createESP(player)
    local box=Drawing.new"Square"
    box.Visible=false
    box.Color=ESP_Config.BoxColor
    box.Thickness=ESP_Config.BoxThickness
    box.Filled=false
    local healthBar=Drawing.new"Square"
    healthBar.Visible=false
    healthBar.Filled=true
    local healthBarBackground=Drawing.new"Square"
    healthBarBackground.Visible=false
    healthBarBackground.Color=Color3 .new(0,0,0)
    healthBarBackground.Transparency=0.5
    healthBarBackground.Filled=true
    local healthBarBorder=Drawing.new"Square"
    healthBarBorder.Visible=false
    healthBarBorder.Color=Color3 .new(1,1,1)
    healthBarBorder.Thickness=1
    healthBarBorder.Filled=false
    local healthText=Drawing.new"Text"
    healthText.Visible=false
    healthText.Size=14
    healthText.Font=Drawing.Fonts.Monospace
    healthText.Outline=true
    healthText.OutlineColor=Color3 .new(0,0,0)
    local nameText=Drawing.new"Text"
    nameText.Visible=false
    nameText.Size=16
    nameText.Font=Drawing.Fonts.Monospace
    nameText.Outline=true
    nameText.OutlineColor=Color3 .new(0,0,0)
    local distanceText=Drawing.new"Text"
    distanceText.Visible=false
    distanceText.Color=Color3 .new(1,1,0)
    distanceText.Size=14
    distanceText.Font=Drawing.Fonts.Monospace
    distanceText.Outline=true
    distanceText.OutlineColor=Color3 .new(0,0,0)
    local weaponText=Drawing.new"Text"
    weaponText.Visible=false
    weaponText.Color=Color3 .new(1,0.5,0)
    weaponText.Size=14
    weaponText.Font=Drawing.Fonts.Monospace
    weaponText.Outline=true
    weaponText.OutlineColor=Color3 .new(0,0,0)
    local tracer=Drawing.new"Line"
    tracer.Visible=false
    tracer.Color=ESP_Config.TracerColor
    tracer.Thickness=ESP_Config.TracerThickness
    local skeletonLines={}
    for i=1,15 do
        skeletonLines[i]=Drawing.new"Line"
        skeletonLines[i].Visible=false
        skeletonLines[i].Color=ESP_Config.SkeletonColor
        skeletonLines[i].Thickness=ESP_Config.SkeletonThickness
    end
    local skeletonPoints={}
    skeletonPoints.Head=Drawing.new"Circle"
    skeletonPoints.Head.Visible=false
    skeletonPoints.Head.Color=Color3 .new(1,0.5,0)
    skeletonPoints.Head.Thickness=2
    skeletonPoints.Head.Filled=true
    skeletonPoints.Head.Radius=4
    local lastHealth,healthChangeTime,smoothHealth=100,0,100
    ESPComponents[player]={
        box=box,
        healthBar=healthBar,
        healthBarBackground=healthBarBackground,
        healthBarBorder=healthBarBorder,
        healthText=healthText,
        nameText=nameText,
        distanceText=distanceText,
        weaponText=weaponText,
        tracer=tracer,
        skeletonLines=skeletonLines,
        skeletonPoints=skeletonPoints
    }
    local function hideAll()
        for _,obj in pairs{
            box,
            healthBar,
            healthBarBackground,
            healthBarBorder,
            healthText,
            nameText,
            distanceText,
            weaponText,
            tracer
        }do
            obj.Visible=false
        end
        for _,line in pairs(skeletonLines)do
            line.Visible=false
        end
        for _,point in pairs(skeletonPoints)do
            point.Visible=false
        end
    end
    RunService.RenderStepped:Connect(function()
        if not ESP_Config.EnableESP then
            hideAll()
            return
        end
        if not player.Character or not player.Character:FindFirstChild"HumanoidRootPart"or not player.Character:FindFirstChild"Humanoid"or player==LocalPlayer then
            hideAll()
            return
        end
        if ESP_Config.TeamCheck and player.Team and player.Team==LocalPlayer.Team then
            hideAll()
            return
        end
        local character=player.Character
        local rootPart=character:FindFirstChild"HumanoidRootPart"
        local humanoid=character:FindFirstChild"Humanoid"
        if not rootPart or not humanoid or humanoid.Health<=0 then
            hideAll()
            return
        end
        local dist=(rootPart.Position-Camera.CFrame.Position).Magnitude
        if dist>ESP_Config.MaxDrawDistance then
            hideAll()
            return
        end
        local rootPos,onScreen=Camera:WorldToViewportPoint(rootPart.Position)
        local headPos=Camera:WorldToViewportPoint(rootPart.Position+Vector3 .new(0,3,0))
        local legPos=Camera:WorldToViewportPoint(rootPart.Position-Vector3 .new(0,3,0))
        local color=ESP_Config.EnemyColor
        if ESP_Config.TeamCheck and player.Team and player.Team==LocalPlayer.Team then
            color=ESP_Config.TeammateColor
        end
        local weaponName="\230\151\160\230\173\166\229\153\168"
        for _,tool in ipairs(character:GetChildren())do
            if tool:IsA"Tool"then
                weaponName=tool.Name
                break
            end
        end
        if ESP_Config.ShowBox and onScreen then
            box.Size=Vector2 .new(1000/rootPos.Z,headPos.Y-legPos.Y)
            box.Position=Vector2 .new(rootPos.X-box.Size.X/2,rootPos.Y-box.Size.Y/2)
            box.Visible=true
            box.Color=ESP_Config.BoxColor
            box.Thickness=ESP_Config.BoxThickness
        else
            box.Visible=false
        end
        if ESP_Config.ShowHealth and onScreen then
            local barX=headPos.X-25
            local barY=headPos.Y-20
            healthBarBackground.Size=Vector2 .new(50,5)
            healthBarBackground.Position=Vector2 .new(barX,barY)
            healthBarBackground.Visible=true
            healthBarBorder.Size=Vector2 .new(50,5)
            healthBarBorder.Position=Vector2 .new(barX,barY)
            healthBarBorder.Visible=true
            smoothHealth=smoothHealth+(humanoid.Health-smoothHealth)*0.1
            local smoothHP=smoothHealth/humanoid.MaxHealth
            healthBar.Size=Vector2 .new(50*smoothHP,5)
            healthBar.Position=Vector2 .new(barX,barY)
            if smoothHP>=0.8 then
                healthBar.Color=Color3 .new(0,1,0)
            elseif smoothHP>=0.5 then
                healthBar.Color=Color3 .new(1,1,0)
            elseif smoothHP>=0.2 then
                healthBar.Color=Color3 .new(1,0.5,0)
            else
                healthBar.Color=Color3 .new(1,0,0)
            end
            if humanoid.Health~=lastHealth then
                healthChangeTime=tick()
                lastHealth=humanoid.Health
            end
            if tick()-healthChangeTime<0.5 then
                healthBar.Color=Color3 .new(1,0,0)
            end
            healthBar.Visible=true
            healthText.Position=Vector2 .new(barX+50+5,barY-5)
            healthText.Text=math.floor(humanoid.Health).."/"..math.floor(humanoid.MaxHealth)
            healthText.Color=color
            healthText.Visible=true
        else
            healthBar.Visible=false
            healthBarBackground.Visible=false
            healthBarBorder.Visible=false
            healthText.Visible=false
        end
        if ESP_Config.ShowName and onScreen then
            nameText.Position=Vector2 .new(headPos.X,headPos.Y-35)
            nameText.Text=player.Name
            nameText.Color=color
            nameText.Visible=true
            if ESP_Config.ShowDistance then
                distanceText.Position=Vector2 .new(headPos.X,headPos.Y+10)
                distanceText.Text=math.floor(dist).."m"
                distanceText.Visible=true
            else
                distanceText.Visible=false
            end
            if ESP_Config.ShowWeapon then
                weaponText.Position=Vector2 .new(headPos.X,headPos.Y-50)
                weaponText.Text=weaponName
                weaponText.Visible=true
            else
                weaponText.Visible=false
            end
        else
            nameText.Visible=false
            distanceText.Visible=false
            weaponText.Visible=false
        end
        if ESP_Config.ShowTracer then
            local head=character:FindFirstChild"Head"
            if head then
                local hPos,hOnScreen=Camera:WorldToViewportPoint(head.Position)
                if hOnScreen then
                    tracer.From=Vector2 .new(Camera.ViewportSize.X/2,0)
                    tracer.To=Vector2 .new(hPos.X,hPos.Y)
                    tracer.Visible=true
                    tracer.Thickness=ESP_Config.TracerThickness
                    if dist<20 then
                        tracer.Color=Color3 .new(0,1,0)
                    elseif dist<50 then
                        tracer.Color=Color3 .new(1,1,0)
                    else
                        tracer.Color=ESP_Config.TracerColor
                    end
                else
                    tracer.Visible=false
                end
            else
                tracer.Visible=false
            end
        else
            tracer.Visible=false
        end
        if ESP_Config.ShowSkeleton and onScreen then
            local head=character:FindFirstChild"Head"
            local torso=character:FindFirstChild"Torso"or character:FindFirstChild"UpperTorso"
            local leftArm=character:FindFirstChild"Left Arm"or character:FindFirstChild"LeftUpperArm"
            local rightArm=character:FindFirstChild"Right Arm"or character:FindFirstChild"RightUpperArm"
            local leftLeg=character:FindFirstChild"Left Leg"or character:FindFirstChild"LeftUpperLeg"
            local rightLeg=character:FindFirstChild"Right Leg"or character:FindFirstChild"RightUpperLeg"
            if head and torso and leftArm and rightArm and leftLeg and rightLeg then
                local hP=Camera:WorldToViewportPoint(head.Position)
                local tP=Camera:WorldToViewportPoint(torso.Position)
                local laP=Camera:WorldToViewportPoint(leftArm.Position)
                local raP=Camera:WorldToViewportPoint(rightArm.Position)
                local llP=Camera:WorldToViewportPoint(leftLeg.Position)
                local rlP=Camera:WorldToViewportPoint(rightLeg.Position)
                skeletonPoints.Head.Position=Vector2 .new(hP.X,hP.Y)
                skeletonPoints.Head.Visible=true
                local pairsArr={
                    {
                        hP,
                        tP
                    },
                    {
                        tP,
                        laP
                    },
                    {
                        tP,
                        raP
                    },
                    {
                        tP,
                        llP
                    },
                    {
                        tP,
                        rlP
                    }
                }
                for i,p in ipairs(pairsArr)do
                    skeletonLines[i].From=Vector2 .new(p[1].X,p[1].Y)
                    skeletonLines[i].To=Vector2 .new(p[2].X,p[2].Y)
                    skeletonLines[i].Visible=true
                end
            else
                for _,line in pairs(skeletonLines)do
                    line.Visible=false
                end
                for _,point in pairs(skeletonPoints)do
                    point.Visible=false
                end
            end
        else
            for _,line in pairs(skeletonLines)do
                line.Visible=false
            end
            for _,point in pairs(skeletonPoints)do
                point.Visible=false
            end
        end
    end)
end
local function cleanupESP(player)
    if ESPComponents[player]then
        local comps=ESPComponents[player]
        for _,component in pairs(comps)do
            if typeof(component)=="table"then
                for _,drawing in pairs(component)do
                    if typeof(drawing)=="userdata"then
                        pcall(function()
                            drawing:Remove()
                        end)
                    end
                end
            else
                if typeof(component)=="userdata"then
                    pcall(function()
                        component:Remove()
                    end)
                end
            end
        end
        ESPComponents[player]=nil
    end
end
for _,player in ipairs(Players:GetPlayers())do
    if player~=LocalPlayer then
        createESP(player)
    end
end
Players.PlayerAdded:Connect(function(player)
    if player~=LocalPlayer then
        createESP(player)
    end
end)
Players.PlayerRemoving:Connect(function(player)
    cleanupESP(player)
end)
addToggle(Tabs.ESP,"\229\188\128\229\144\175ESP\230\128\187\229\188\128\229\133\179",false,function(state)
    ESP_Config.EnableESP=state
    if not state then
        for _,player in ipairs(Players:GetPlayers())do
            if player~=LocalPlayer and ESPComponents[player]then
                for _,component in pairs(ESPComponents[player])do
                    if typeof(component)=="table"then
                        for _,d in pairs(component)do
                            if typeof(d)=="userdata"then
                                pcall(function()
                                    d.Visible=false
                                end)
                            end
                        end
                    else
                        if typeof(component)=="userdata"then
                            pcall(function()
                                component.Visible=false
                            end)
                        end
                    end
                end
            end
        end
    end
end)
addToggle(Tabs.ESP,"\230\152\190\231\164\186\229\164\180\233\161\182\229\144\141\231\167\176",true,function(v)
    ESP_Config.ShowName=v
end)
addToggle(Tabs.ESP,"\230\152\190\231\164\186\232\161\128\233\135\143",true,function(v)
    ESP_Config.ShowHealth=v
end)
addToggle(Tabs.ESP,"\230\152\190\231\164\186\232\183\157\231\166\187",true,function(v)
    ESP_Config.ShowDistance=v
end)
addToggle(Tabs.ESP,"\230\150\185\230\161\134\233\128\143\232\167\134",true,function(v)
    ESP_Config.ShowBox=v
end)
addToggle(Tabs.ESP,"\229\176\132\231\186\191\233\128\143\232\167\134 (\228\187\142\229\177\143\229\185\149\233\161\182\233\131\168)",false,function(v)
    ESP_Config.ShowTracer=v
end)
addToggle(Tabs.ESP,"\233\170\168\230\158\182\233\128\143\232\167\134",false,function(v)
    ESP_Config.ShowSkeleton=v
end)
addToggle(Tabs.ESP,"\230\173\166\229\153\168\230\152\190\231\164\186",false,function(v)
    ESP_Config.ShowWeapon=v
end)
addToggle(Tabs.ESP,"\231\169\191\229\162\153ESP",false,function(v)
    ESP_Config.WallHack=v
end)
addToggle(Tabs.ESP,"\229\140\186\229\136\134\233\152\159\229\143\139\233\162\156\232\137\178",false,function(v)
    ESP_Config.TeamCheck=v
end)
addSlider(Tabs.ESP,"ESP\230\156\128\229\164\167\229\143\175\232\167\134\232\183\157\231\166\187",50,1000,350,10,function(val)
    ESP_Config.MaxDrawDistance=val
end)
addSlider(Tabs.ESP,"\230\150\185\230\161\134\231\186\191\230\157\161\231\178\151\231\187\134",1,5,1,1,function(v)
    ESP_Config.BoxThickness=v
end)
addSlider(Tabs.ESP,"\229\176\132\231\186\191\231\186\191\230\157\161\231\178\151\231\187\134",1,10,1,1,function(v)
    ESP_Config.TracerThickness=v
end)
local P_FONT_NAME=Drawing.Fonts.Monospace
local P_MAX_DISTANCE=1500
local P_BOX_THICKNESS=1
local P_BOX_SCALE=2.2
local P_Enabled=false
local P_DrawBox=false
local P_DrawDistance=false
local P_DrawName=false
local P_DrawTracer=false
local P_DrawHealth=false
local P_Objects={}
local P_Initialized=false
local P_RenderConn=nil
local function P_WorldToScreen(worldPos)
    local sp,onScreen=Camera:WorldToViewportPoint(worldPos)
    if not onScreen then
        return nil
    end
    return Vector2 .new(sp.X,sp.Y)
end
local function P_GetCharData(player)
    local char=player.Character
    if not char then
        return nil
    end
    local humanoid=char:FindFirstChildOfClass"Humanoid"
    local root=char:FindFirstChild"HumanoidRootPart"or char:FindFirstChild"UpperTorso"or char:FindFirstChild"Torso"
    local head=char:FindFirstChild"Head"
    if not humanoid or not root or not head then
        return nil
    end
    return char,humanoid,root,head
end
local function P_CreateObjects()
    local objs={}
    objs.Box=Drawing.new"Square"
    objs.Box.Filled=false
    objs.Box.Transparency=1
    objs.Name=Drawing.new"Text"
    objs.Name.Size=16
    objs.Name.Center=true
    objs.Name.Outline=true
    objs.Name.Font=P_FONT_NAME
    objs.Distance=Drawing.new"Text"
    objs.Distance.Size=14
    objs.Distance.Center=true
    objs.Distance.Outline=true
    objs.Distance.Font=P_FONT_NAME
    objs.Health=Drawing.new"Text"
    objs.Health.Size=14
    objs.Health.Center=true
    objs.Health.Outline=true
    objs.Health.Font=P_FONT_NAME
    objs.Tracer=Drawing.new"Line"
    objs.Tracer.Thickness=1
    objs.Tracer.Transparency=0.5
    return objs
end
local function P_DestroyObjects(objs)
    if not objs then
        return
    end
    for _,obj in pairs(objs)do
        if obj and obj.Remove then
            pcall(function()
                obj:Remove()
            end)
        end
    end
end
local function P_UpdatePlayer(player,objs)
    if player==LocalPlayer then
        return
    end
    local char,humanoid,root,head=P_GetCharData(player)
    if not char or not humanoid or humanoid.Health<=0 then
        for _,obj in pairs(objs)do
            obj.Visible=false
        end
        return
    end
    local distance=(Camera.CFrame.Position-root.Position).Magnitude
    if distance>P_MAX_DISTANCE then
        for _,obj in pairs(objs)do
            obj.Visible=false
        end
        return
    end
    local headScreen=P_WorldToScreen(head.Position+Vector3 .new(0,0.5,0))
    local rootScreen=P_WorldToScreen(root.Position)
    if not headScreen or not rootScreen then
        for _,obj in pairs(objs)do
            obj.Visible=false
        end
        return
    end
    local height=math.abs(headScreen.Y-rootScreen.Y)*P_BOX_SCALE
    local width=height*0.65
    height=math.max(height,15)
    width=math.max(width,10)
    local topLeft=Vector2 .new(headScreen.X-width/2,headScreen.Y-height*0.2)
    local bottomRight=Vector2 .new(headScreen.X+width/2,topLeft.Y+height)
    if P_DrawBox then
        objs.Box.Visible=true
        objs.Box.Size=bottomRight-topLeft
        objs.Box.Position=topLeft
        objs.Box.Thickness=P_BOX_THICKNESS
        local hp=humanoid.Health/humanoid.MaxHealth
        if hp>0.5 then
            objs.Box.Color=Color3 .fromRGB(0,255,0)
        elseif hp>0.25 then
            objs.Box.Color=Color3 .fromRGB(255,165,0)
        else
            objs.Box.Color=Color3 .fromRGB(255,0,0)
        end
    else
        objs.Box.Visible=false
    end
    if P_DrawName then
        objs.Name.Visible=true
        objs.Name.Text=player.Name
        objs.Name.Color=Color3 .fromRGB(255,255,255)
        objs.Name.Position=Vector2 .new(headScreen.X,topLeft.Y-16-2)
    else
        objs.Name.Visible=false
    end
    if P_DrawDistance then
        objs.Distance.Visible=true
        objs.Distance.Text=string.format("[%d m]",math.floor(distance))
        objs.Distance.Color=Color3 .fromRGB(200,200,200)
        objs.Distance.Position=Vector2 .new(headScreen.X,bottomRight.Y+2)
    else
        objs.Distance.Visible=false
    end
    if P_DrawHealth then
        objs.Health.Visible=true
        objs.Health.Text=string.format("HP: %d/%d",math.floor(humanoid.Health),math.floor(humanoid.MaxHealth))
        objs.Health.Color=Color3 .fromRGB(0,255,0)
        objs.Health.Position=Vector2 .new(headScreen.X,bottomRight.Y+16+2)
    else
        objs.Health.Visible=false
    end
    if P_DrawTracer then
        objs.Tracer.Visible=true
        objs.Tracer.From=Vector2 .new(Camera.ViewportSize.X/2,0)
        objs.Tracer.To=Vector2 .new(headScreen.X,bottomRight.Y)
        objs.Tracer.Color=Color3 .fromRGB(255,255,255)
    else
        objs.Tracer.Visible=false
    end
end
local function P_InitPlayer(player)
    if player==LocalPlayer then
        return
    end
    if P_Objects[player]then
        P_DestroyObjects(P_Objects[player])
    end
    P_Objects[player]=P_CreateObjects()
end
addButton(Tabs.ESPP,"\240\159\148\167 \229\136\157\229\167\139\229\140\150 ESP2 (\229\191\133\229\133\136\231\130\185\229\135\187)",function()
    if P_Initialized then
        print"\226\154\160\239\184\143 ESP2 \229\183\178\231\187\143\229\136\157\229\167\139\229\140\150\232\191\135\228\186\134"
        return
    end
    P_Initialized=true
    for _,player in ipairs(Players:GetPlayers())do
        P_InitPlayer(player)
    end
    Players.PlayerAdded:Connect(P_InitPlayer)
    Players.PlayerRemoving:Connect(function(player)
        if P_Objects[player]then
            P_DestroyObjects(P_Objects[player])
            P_Objects[player]=nil
        end
    end)
    P_RenderConn=RunService.RenderStepped:Connect(function()
        if not P_Enabled then
            return
        end
        for player,objs in pairs(P_Objects)do
            if player.Parent then
                pcall(P_UpdatePlayer,player,objs)
            else
                P_DestroyObjects(objs)
                P_Objects[player]=nil
            end
        end
    end)
    print"\226\156\133 ESP2 \229\136\157\229\167\139\229\140\150\229\174\140\230\136\144"
end)
addToggle(Tabs.ESPP,"ESP2 \230\128\187\229\188\128\229\133\179",false,function(s)
    P_Enabled=s
    if not s then
        for _,objs in pairs(P_Objects)do
            for _,obj in pairs(objs)do
                obj.Visible=false
            end
        end
    end
end)
addToggle(Tabs.ESPP,"\231\142\169\229\174\182\230\150\185\230\161\134",false,function(s)
    P_DrawBox=s
end)
addToggle(Tabs.ESPP,"\231\142\169\229\174\182\229\144\141\229\173\151",false,function(s)
    P_DrawName=s
end)
addToggle(Tabs.ESPP,"\231\142\169\229\174\182\232\183\157\231\166\187",false,function(s)
    P_DrawDistance=s
end)
addToggle(Tabs.ESPP,"\231\148\159\229\145\189\229\128\188",false,function(s)
    P_DrawHealth=s
end)
addToggle(Tabs.ESPP,"\229\176\132\231\186\191 (\228\187\142\229\177\143\229\185\149\233\161\182\233\131\168)",false,function(s)
    P_DrawTracer=s
end)
addSlider(Tabs.ESPP,"\230\156\128\229\164\167\230\184\178\230\159\147\232\183\157\231\166\187",500,5000,1500,100,function(value)
    P_MAX_DISTANCE=value
end)
addSlider(Tabs.ESPP,"\230\150\185\230\161\134\229\164\167\229\176\143\229\128\141\230\149\176",1.5,3,2.2,0.1,function(value)
    P_BOX_SCALE=value
end)
addSlider(Tabs.ESPP,"\230\150\185\230\161\134\231\186\191\230\157\161\231\178\151\231\187\134",1,5,1,1,function(value)
    P_BOX_THICKNESS=value
end)
local function addItemESP(targetName,color,label)
    addToggle(Tabs.wb,label,false,function(state)
        if not state then
            return
        end
        for _,obj in ipairs(workspace:GetDescendants())do
            if(obj:IsA"BasePart"or obj:IsA"Model")and obj.Name==targetName then
                if not obj:FindFirstChild"ESP_Highlight"then
                    local h=Instance.new"Highlight"
                    h.Name="ESP_Highlight"
                    h.FillColor=color
                    h.OutlineColor=color
                    h.FillTransparency=0.2
                    h.OutlineTransparency=0.05
                    h.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop
                    h.Parent=obj
                    local attachPart
                    if obj:IsA"BasePart"then
                        attachPart=obj
                    elseif obj:IsA"Model"then
                        attachPart=obj.PrimaryPart
                        if not attachPart then
                            for _,d in ipairs(obj:GetDescendants())do
                                if d:IsA"BasePart"then
                                    attachPart=d
                                    break
                                end
                            end
                        end
                    end
                    if attachPart then
                        local billboard=Instance.new"BillboardGui"
                        billboard.Name="ESP_Tag"
                        billboard.Size=UDim2 .new(0,200,0,40)
                        billboard.StudsOffset=Vector3 .new(0,3,0)
                        billboard.AlwaysOnTop=true
                        billboard.MaxDistance=0
                        billboard.Adornee=attachPart
                        billboard.Parent=attachPart
                        local nameLbl=Instance.new"TextLabel"
                        nameLbl.Size=UDim2 .new(1,0,0.5,0)
                        nameLbl.Position=UDim2 .new(0,0,0,0)
                        nameLbl.BackgroundTransparency=1
                        nameLbl.Text=label
                        nameLbl.TextColor3=color
                        nameLbl.TextScaled=true
                        nameLbl.Font=Enum.Font.GothamBold
                        nameLbl.TextStrokeColor3=Color3 .new(0,0,0)
                        nameLbl.TextStrokeTransparency=0.3
                        nameLbl.Parent=billboard
                        local distLbl=Instance.new"TextLabel"
                        distLbl.Size=UDim2 .new(1,0,0.5,0)
                        distLbl.Position=UDim2 .new(0,0,0.5,0)
                        distLbl.BackgroundTransparency=1
                        distLbl.Text="--m"
                        distLbl.TextColor3=Color3 .new(1,1,1)
                        distLbl.TextScaled=true
                        distLbl.Font=Enum.Font.GothamBold
                        distLbl.TextStrokeColor3=Color3 .new(0,0,0)
                        distLbl.TextStrokeTransparency=0.3
                        distLbl.Parent=billboard
                        task.spawn(function()
                            while distLbl.Parent do
                                local char=LocalPlayer.Character
                                local root=char and char:FindFirstChild"HumanoidRootPart"
                                if root and attachPart.Parent then
                                    local d=(root.Position-attachPart.Position).Magnitude
                                    distLbl.Text=string.format("%.1fm",d)
                                end
                                task.wait(0.2)
                            end
                        end)
                    end
                end
            end
        end
    end)
end
addItemESP("MoneyPrinter",Color3 .new(0,0.8,0.2),"\240\159\146\176 \229\141\176\233\146\158\230\156\186\230\163\128\230\181\139")
addItemESP("Gold Bar",Color3 .new(1,0.8,0),"\240\159\165\135 \233\135\145\229\157\151")
addItemESP("Bitcoin",Color3 .new(1,0.6,0),"\226\130\191 BTC")
addItemESP("Sapphire",Color3 .new(0.6,0,1),"\240\159\146\142 \231\180\171\229\174\157\231\159\179")
addItemESP("SafeDoor",Color3 .new(1,0.7,0),"\240\159\148\144 \228\191\157\233\153\169\231\174\177")
addItemESP("Ruby",Color3 .new(1,0,0),"\240\159\148\180 \231\186\162\229\174\157\231\159\179")
addItemESP("Ruby Ring",Color3 .new(1,0,0),"\240\159\146\141 \231\186\162\229\174\157\231\159\179\230\136\146\230\140\135")
addItemESP("GPU",Color3 .new(0,0.8,1),"\240\159\150\165 GPU")
addItemESP("MilitaryChest",Color3 .new(0.3,0.5,0.2),"\240\159\142\150 \229\134\155\233\156\128\231\174\177")
addItemESP("AK-47",Color3 .new(1,0.2,0),"\240\159\148\171 AK47")
addItemESP("AUG A1",Color3 .new(0.6,0.2,1),"\240\159\148\171 AUG A1")
addItemESP("AWM",Color3 .new(0.3,0.3,0.3),"\240\159\142\175 AWM")
addItemESP("M4A1",Color3 .new(0,0.5,1),"\240\159\148\171 M4A1")
addItemESP("RPG-7",Color3 .new(1,0.5,0),"\240\159\154\128 RPG")
addItemESP("ARX-160",Color3 .new(0.2,0.5,1),"\240\159\148\171 ARX-160")
addToggle(Tabs.wb,"\240\159\146\179 \232\180\167\231\137\169\229\141\161",false,function(state)
    if not state then
        return
    end
    local cc=workspace.Local and workspace.Local:FindFirstChild"Tools"
    cc=cc and cc:FindFirstChild"Cargo Card"
    if cc and not cc:FindFirstChild"ESP_Highlight"then
        local h=Instance.new"Highlight"
        h.Name="ESP_Highlight"
        h.FillColor=Color3 .new(0.2,0.4,1)
        h.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop
        h.Parent=cc
    end
end)
addButton(Tabs.qq,"\229\136\160\233\153\164\231\130\174\229\143\176",function()
    local l=workspace:FindFirstChild"Local"
    if l then
        local g=l:FindFirstChild"Gizmos"
        if g then
            local t=g:FindFirstChild"Turret"
            if t then
                t:Destroy()
            end
        end
    end
end)
addButton(Tabs.qq,"\229\136\160\233\153\164\231\186\162\229\164\150\231\186\191",function()
    local p=workspace:FindFirstChild"Props"
    if p then
        if p:FindFirstChild"Laser"then
            p.Laser:Destroy()
        end
        if p:FindFirstChild"LaserAssembly"then
            p.LaserAssembly:Destroy()
        end
    end
end)
addButton(Tabs.qq,"\229\136\160\233\153\164\231\186\162\232\137\178\229\177\143\233\154\156",function()
    local p=workspace:FindFirstChild"Props"
    if p and p:FindFirstChild"LaserForcefield"then
        p.LaserForcefield:Destroy()
    end
end)
local burningActive=false
addToggle(Tabs.rsao,"\240\159\148\165 \231\131\136\231\132\176\230\136\152\229\163\171",false,function(state)
    burningActive=state
    if burningActive then
        task.spawn(function()
            local Event=game:GetService"ReplicatedStorage".Shared.Core.Network:GetChildren()[75]
            while burningActive do
                Event:FireServer("burning",true)
                task.wait(0.2)
            end
        end)
    end
end)
addButton(Tabs.rsao,"\229\136\183\229\141\176\233\146\158\230\156\186(\232\184\162\232\135\170\229\183\177)",function()
    LocalPlayer:Kick"\231\187\153\230\136\145\233\135\141\232\191\155\229\144\167\239\188\140\232\128\129\229\188\159"
end)
addButton(Tabs.rsao,"\229\164\169\233\187\145\49",function()
    local Lighting=game:GetService"Lighting"
    task.spawn(function()
        while task.wait(0.3)do
            Lighting.ClockTime=2
            Lighting.Brightness=0.45
            Lighting.Ambient=Color3 .new(0.18,0.18,0.25)
            Lighting.OutdoorAmbient=Color3 .new(0.16,0.16,0.22)
        end
    end)
end)
addButton(Tabs.rsao,"\229\164\169\233\187\145\50",function()
    local Lighting=game:GetService"Lighting"
    Lighting.ClockTime=2
    Lighting.Brightness=0.35
    Lighting.Ambient=Color3 .new(0.12,0.12,0.18)
    Lighting.OutdoorAmbient=Color3 .new(0.1,0.1,0.15)
end)
addButton(Tabs.gm,"\229\165\165\232\143\178\229\189\147\233\147\186\229\190\170\231\142\175\229\148\174\229\141\150",function()
    local Event=game:GetService"ReplicatedStorage".Shared.Core.Network:GetChildren()[144]
    task.spawn(function()
        while task.wait(0.2)do
            pcall(function()
                Event:InvokeServer"Ofy"
            end)
        end
    end)
end)
addButton(Tabs.gm,"C4 - 250\229\133\131",function()
    local Event=game:GetService"ReplicatedStorage".Shared.Core.Network:GetChildren()[190]
    Event:InvokeServer{
        itemName="C4",
        itemType="Ammo",
        ammoToBuyIndex=1,
        categoryName="Explosives",
        shopName="Guns"
    }
end)
addButton(Tabs.gm,"\229\190\170\231\142\175\232\161\165\229\133\133\229\188\185\232\141\175",function()
    local Event=game:GetService"ReplicatedStorage".Shared.Core.Network:GetChildren()[190]
    task.spawn(function()
        while task.wait(0.2)do
            pcall(function()
                Event:InvokeServer{
                    refillAll=true
                }
            end)
        end
    end)
end)
print"========== \233\128\154\231\188\137\232\132\154\230\156\172 (ChronixUI \229\174\140\230\149\180\231\137\136 + \231\137\169\229\147\129\232\183\157\231\166\187) \229\138\160\232\189\189\229\174\140\230\136\144 =========="