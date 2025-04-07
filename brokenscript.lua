local warn=function(m) warn("[hat fling] " .. m) end
--local print=function(m) print("[hat fling] " .. m) end
warn("a gift from mike to inoxaze")
local lower = string.lower
local sin = math.sin
local random = math.random

local fph = workspace.FallenPartsDestroyHeight
local plr = game.Players.LocalPlayer
local character = plr.Character
local hum = character.Humanoid
local oldaccessories = hum:GetAccessories()
local accessories = hum:GetAccessories()
local hrp = character:WaitForChild("HumanoidRootPart")
local torso = character:FindFirstChild("UpperTorso") or character:FindFirstChild("Torso")
local start = hrp.CFrame
local oldsr = plr.SimulationRadius
local irdone = false
local sethiddenproperty = sethiddenproperty
local setscriptable = setscriptable
local replicatesignal = replicatesignal

task.spawn(function()
    repeat
        accessories = game.Players.LocalPlayer.Character.Humanoid:GetAccessories()
        task.wait()
    until not character
end)

local function updatestate(hat, state)
    if sethiddenproperty then
        sethiddenproperty(hat, "BackendAccoutrementState", state)
    elseif setscriptable then
        setscriptable(hat, "BackendAccoutrementState", true)
        hat.BackendAccoutrementState = state
    else
        local success = pcall(function()
            hat.BackendAccoutrementState = state
        end)
        if not success then
            warn("executor not supported for hat collisions, sorry!")
        end
    end
end

if #accessories == 0 then
    warn("no valid hats found... put on a hat buddy ◔_◔")
end

workspace.FallenPartsDestroyHeight = 0/0

local function play(id, time)
    local Anim = Instance.new("Animation")
    Anim.AnimationId = "https"..tostring(random(1000000, 9999999)).."="..tostring(id)
    local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    track.Priority = 5
    track:Play()
    track:AdjustSpeed(0)
    track:AdjustWeight(1)
    track.TimePosition = time
end

function hatdrop(Character)
    --[[
    huge credits to
    universal (@itzuniversal)
    for creating back hatdrop.
    ]]
    local function cb(cf)
        local hum = game.Players.LocalPlayer.Character.Humanoid
        for i,v in pairs(hum:GetAccessories()) do 
            v.Handle.Position = cf.Position
        end
    end

    local hum = Character:WaitForChild("Humanoid")
    local hrp = Character:WaitForChild("HumanoidRootPart")
    local startCF = hrp.CFrame
    local torso = Character:FindFirstChild("Torso") or Character:FindFirstChild("LowerTorso")
    local fpdh = workspace.FallenPartsDestroyHeight
    local animator = hum or Character:FindFirstChildOfClass("AnimationController")

    local dropcf = CFrame.new(hrp.Position.x, fph+(math.pi/10), hrp.Position.z) * (torso and CFrame.Angles(math.rad(95), 0, 0))
    
    for _,v in next, animator:GetPlayingAnimationTracks() do
	    v:Stop()
    end

    if hum.RigType == Enum.HumanoidRigType.R15 then
        dropcf = CFrame.new(hrp.Position.x, fph+(math.pi/10), hrp.Position.z) * (torso and CFrame.Angles(0, 0, 0))
        hum:ChangeState(16)
        play(855685476, 1)
    else
        play(35154961, 3.24)
        play(313762630, 0)
        play(56153856, 1)
        play(94242777, 1)
        play(74909537, 0.4)
        play(223211142, 0.2)
        play(54610595, 0.53)
        play(225279725, 0)
        play(123101323, 2)
    end

    local locks = {}
    for i,v in pairs(hum:GetAccessories()) do
        table.insert(locks,v.Changed:Connect(function(p)
            if p == "BackendAccoutrementState" then
                updatestate(v,0)
            end
        end))
        updatestate(v,2)
    end

    local c;c=game:GetService("RunService").PostSimulation:Connect(function()
        if(not Character:FindFirstChild("HumanoidRootPart"))then c:Disconnect()return;end
        
        hrp.Velocity = Vector3.new(0,25,0)
        hrp.RotVelocity = Vector3.new(0,0,0)
        hrp.CFrame = dropcf
    end)

    task.wait(0.31)
    if cb then cb(startCF) end

    replicatesignal(game.Players.LocalPlayer.ConnectDiedSignalBackend)
    warn("initalizing permadeath... wait " .. game.Players.RespawnTime .. "s")
    wait(game.Players.RespawnTime + .1)
    warn("initalized permadeath")
    --replicatesignal(game.Players.LocalPlayer.Character.Kill)
    hum:ChangeState(15)

    plr.SimulationRadius = 2147483647

    repeat task.wait() until torso.Parent~=Character

    for i,v in pairs(locks) do
        v:Disconnect()
    end

    for i,v in pairs(hum:GetAccessories()) do
        -- bruteforce method (boy what the hell is ts)
        -- weird ahh method but like it works soo..
        updatestate(v,4)
        plr.SimulationRadius = 2147483647
        cb(startCF)
        task.wait(0.0125)
        cb(startCF)
        task.wait(0.0125)
        cb(startCF)
        task.wait(0.0125)
        cb(startCF)
        task.wait(0.0125)
        cb(startCF)
        task.wait(0.0125)
        cb(startCF)
        task.wait(0.0125)
        cb(startCF)
        task.wait(0.0125)
        cb(startCF)
        task.wait(0.0125)
        cb(startCF)
        task.wait(0.0125)
        cb(startCF)
    end
end


hatdrop(character)

spawn(function()
    plr.CharacterAdded:wait()
    irdone = true
    workspace.FallenPartsDestroyHeight = fph
end)

local players = {}

task.spawn(function()
    while task.wait() do
        local currentPlayers = game.Players:GetPlayers()
        for i = #players, 1, -1 do
            if not table.find(currentPlayers, players[i]) or not players[i].Character or not players[i].Character:FindFirstChild("HumanoidRootPart") then
                table.remove(players, i)
            end
        end
        for _, player in ipairs(currentPlayers) do
            if player ~= plr and not table.find(players, player) and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                table.insert(players, player)
            end
        end
    end
end)
if _G.input_respawn=="reset" then
    local StarterGui = game:GetService("StarterGui")
    local reBE = Instance.new("BindableEvent")
    reBE.Event:Once(function()  
        if irdone then return end
        irdone = true
        StarterGui:SetCore("ResetButtonCallback", true)  
        replicatesignal(game.Players.LocalPlayer.ConnectDiedSignalBackend)
        warn("wait " .. game.Players.RespawnTime .. "s to stop permadeath")
        wait(game.Players.RespawnTime)
        warn("stopped permadeath")
    end)
    StarterGui:SetCore("ResetButtonCallback", reBE)  
elseif _G.input_respawn=="alt key" then
    game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then return end
        if input.KeyCode == Enum.KeyCode.LeftAlt then 
            if irdone then return end
            irdone = true
            replicatesignal(game.Players.LocalPlayer.ConnectDiedSignalBackend)
            warn("wait " .. game.Players.RespawnTime .. "s to stop permadeath")
            wait(game.Players.RespawnTime)
            warn("stopped permadeath")
        end
    end)
end

local function _G.whitelisted(_G.whitelist, playerName)
    for _, name in ipairs(_G.whitelist) do
        if string.lower(name) == string.lower(playerName) then
            return true
        end
    end
    return false
end

local crazytargets = {}
for i,hat in pairs(accessories) do
    if hat:FindFirstChild("Handle") and hat:FindFirstChild("Handle").CanCollide then
        warn(string.format("%s successfully dropped :D",hat.Name))
    else
        warn(string.format("failed to drop, please try again :(",hat.Name)) 
        return
    end
    task.spawn(function()
        hat.Handle.CanTouch = false
        hat.Handle:FindFirstChildWhichIsA("SpecialMesh"):Destroy()
        Instance.new("SelectionBox", hat.Handle).Adornee = hat.Handle
    end)
    spawn(function()
        while character.Parent ~= nil and hat.Parent ~= nil do
            if #players > 0 then
                local targetPlayer = players[random(1, #players)]
                local targetCharacter = targetPlayer.Character
                local targetHumanoid = targetCharacter:FindFirstChildOfClass("Humanoid")
                local hrp = targetCharacter:FindFirstChild("HumanoidRootPart")
                if hrp and targetPlayer then
                    local elapsedTime = 0
                    local printed=false
                    while targetPlayer and elapsedTime < _G.hat_timeout and character.Parent ~= nil and hat.Parent ~= nil and hrp.AssemblyLinearVelocity.Magnitude < _G.max_velocity and not _G.whitelisted(_G.whitelist,targetPlayer.Name) and targetCharacter and targetHumanoid.Health > 0 and (not _G.exclude_sitting or (_G.exclude_sitting and not targetHumanoid.SeatPart)) and not table.find(targetCharacter:GetChildren(), function(obj) return obj:IsA("BasePart") and obj.Anchored end) and not table.find(character:GetChildren(), function(obj) return obj:IsA("BasePart") and obj:FindFirstChildOfClass("Weld") end) and (not _G.crazy_mode or (_G.crazy_mode and not table.find(crazytargets,targetPlayer))) do              
                        local Deltatime = task.wait()
                        --task.wait()
                        if targetPlayer == nil then warn("no players to target :|") break end
                        if targetCharacter == nil then break end
                        if not hat:FindFirstChild("Handle") then warn(string.format("couldn't fetch handle of %s D:", hat.Name)); return end --table.remove(accessories,i); return end
                        if not printed then 
                            print(string.format("%s | Target: %s | Hat: %s",i,targetPlayer.Name,hat.Name)) 
                            if _G.crazy_mode then
                                table.insert(crazytargets,targetPlayer)
                            end
                        end
                        printed = true
                        elapsedTime += 0.005
                        plr.SimulationRadius = 2147483647
                        if plr:GetNetworkPing() > _G.ping_threshold then
                            hat.Handle.AssemblyAngularVelocity = Vector3.new(sin(os.clock()*15),sin(os.clock()*15+1.0471975511965976),sin(os.clock()*15+2.0943951023931953))
                            hat.Handle.Anchored = true
                        else
                            hat.Handle.AssemblyAngularVelocity = Vector3.one * _G.fling_velocity
                            hat.Handle.Anchored = false
                        end
                        hat.Handle.CFrame = hrp.CFrame+(hrp.AssemblyLinearVelocity*0.5)*(sin(os.clock()*20)+1)
                    end
                    if _G.crazy_mode then
                        table.remove(crazytargets,table.find(crazytargets,targetPlayer))
                    end
                    printed=false
                end
            end
        end
    end)
end
