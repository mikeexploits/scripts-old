getgenv().SecureMode = true

local function sendnotif(title, text)
	game.StarterGui:SetCore("SendNotification", {
		Title = title,
		Text = text,
		Duration = 10,
	})
end

---VARIABLES---
local ray = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local sense = loadstring(game:HttpGet('https://sirius.menu/sense'))()

local players = game:GetService("Players")

local localPlayer = players.LocalPlayer

if not localPlayer.Character then
    sendnotif("mikefx","character is missing waiting for character...")
    localPlayer.CharacterAdded:Wait()
end

sendnotif("mikefx","currently loading...")

local mods = {
    303947698, 1318144404, 179318728, 2541347862, 478030690, 28476259, 54255188, 489413803
}

local function getClosestPlayer()
    local rootPart = localPlayer.Character:FindFirstChild("HumanoidRootPart")

    if not (localPlayer.Character or rootPart) then return end

    local distance = math.huge
    local target

    for index, player in pairs(game:GetService("Players"):GetPlayers()) do
        if player ~= localPlayer and player.Character and
            player.Character:FindFirstChild("HumanoidRootPart") then
            local playerPosition = player.Character.HumanoidRootPart.Position
            local currentDistance =
                (rootPart.Position - playerPosition).magnitude

            if currentDistance < distance then
                distance = currentDistance
                target = player
            end
        end
    end

    return target
end

---SENSE---
sense.teamSettings.enemy.box = true
sense.teamSettings.enemy.name = true
sense.teamSettings.enemy.distance = true
sense.teamSettings.friendly.box = true
sense.teamSettings.friendly.name = true
sense.teamSettings.friendly.distance = true
sense.sharedSettings.useTeamColor = true

---GUI---
local window = ray:CreateWindow({
    Name = "mikefx",
    LoadingTitle = "mikefx",
    LoadingSubtitle = "By Mike and soupyfx",
    ConfigurationSaving = {
        Enabled = false,
        FolderName = nil,
        FileName = "mikefxconfig"
    },
    Discord = {Enabled = false, Invite = "noinvitelink", RememberJoins = true},
    KeySystem = true,
    KeySettings = {
        Title = "mikefx hub",
        Subtitle = "key system",
        Note = "its private software so ask for key or fuck off",
        FileName = "mikefxkey",
        SaveKey = false,
        GrabKeyFromSite = true,
        Key = {
            "https://raw.githubusercontent.com/profileaccount/scripts/main/keyKIT"
        }
    }
})

local main = window:CreateTab("Main")

main:CreateSection("player")

local walkspeedChange = true
main:CreateSlider({
    Name = "Walkspeed",
    Range = {0, 200},
    Increment = 5,
    Suffix = "WS",
    CurrentValue = localPlayer.Character.Humanoid.WalkSpeed,
    Flag = "walkspeed",
    Callback = function(value)
        walkspeedChange = false
        task.wait(0.1)
        if localPlayer.Character then
            localPlayer.Character.Humanoid.WalkSpeed = value
            walkspeedChange = true
            while walkspeedChange do
                localPlayer.Character.Humanoid.WalkSpeed = value
                task.wait(0.05)
            end
        end
    end
})

local change = true
main:CreateSlider({
    Name = "Jumppower",
    Range = {0, 100},
    Increment = 5,
    Suffix = "JP",
    CurrentValue = localPlayer.Character.Humanoid.JumpPower,
    Flag = "jumppower",
    Callback = function(value)
        change = false
        task.wait(0.1)
        if localPlayer.Character then
            localPlayer.Character.Humanoid.JumpPower = value
            change = true
            while change do
                localPlayer.Character.Humanoid.JumpPower = value
                task.wait(0.05)
            end
        end
    end
})

main:CreateSection("visuals")

main:CreateToggle({
    Name = "ESP",
    CurrentValue = false,
    Flag = "esp",
    Callback = function(value)
        sense.teamSettings.enemy.enabled = value
        sense.teamSettings.friendly.enabled = value
    end
})

main:CreateButton({
    Name = "Unload ESP Entirely",
    Callback = function() sense.Unload() end
})

main:CreateSection("tools")

main:CreateButton({
    Name = "realzzhub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RealZzHub/MainV2/main/Main.lua"))()
    end
})

main:CreateButton({
    Name = "infinite yield",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})

main:CreateButton({
    Name = "dark dex secured",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua",true))()
    end
})

main:CreateButton({
    Name = "hydroxide",
    Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/init.lua"))()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ui/main.lua"))()
    end
})

main:CreateSection("infomation")

main:CreateParagraph({
    Title = "mikefx",
    Content = "a cool hack made by mike and soupyfx for doing some trolling on the side"
})

main:CreateParagraph({
    Title = "credits",
    Content = [[gui - rayfield (docs.sirius.menu/rayfield)
esp - sense (docs.sirius.menu/sense)
hydroxide (github.com/Upbolt/Hydroxide)
infiniteyield (github.com/EdgeIY/infiniteyield)
dark dex secured (github.com/Babyhamsta/RBLX_Scripts)
realzzhub (github.com/RealZzHub/Main)]]
})

local to = window:CreateTab("Transfur Outbreak",11987699853)

to:CreateSection("infected")

to:CreateButton({
    Name = "Dropkick Nearest",
    Callback = function()
        local closestPlayer = getClosestPlayer()
        if localPlayer.Backpack:FindFirstChild("Dropkick") then
            local dropkick = localPlayer.Backpack:FindFirstChild("Dropkick")
            dropkick:FindFirstChildWhichIsA("RemoteEvent"):FireServer(
                closestPlayer.Character)
            dropkick.Cooldown.Value = false
        end
    end
})

to:CreateDropdown({
    Name = "infect",
    Options = {"none", "Cone","DarkDominus","Emeraldvalk","Icevalk","SPFedora","RedCone","Redvalk","BlueDomino","GreenCone"},
    CurrentOption = {"None"},
    MultipleOptions = false,
    Flag = "infect",
    Callback = function(option)
        if option[1] == "none" then return end
        if not workspace.Cones:FindFirstChild(option[1]) then return end

        local rootPart = localPlayer.Character:FindFirstChild("HumanoidRootPart")
        local part = workspace.Cones:FindFirstChild(option[1])
    
        task.spawn(function()
            firetouchinterest(part, rootPart, 1)
            task.wait()
            firetouchinterest(part, rootPart, 0)
        end)
    end
})

to:CreateSection("human")

local escapegrab = true

coroutine.resume(coroutine.create(function()
    while true do
        if escapegrab then
            local creator = localPlayer.Character:FindFirstChild("creator")

            if creator and creator.Value then
                local creator = creator.Value
                game:GetService("ReplicatedStorage").Struggle:FireServer()
            end

        end
        task.wait(0.1)
    end
end))

to:CreateToggle({
    Name = "insta-escape grab",
    CurrentValue = true,
    Flag = "escapegrab",
    Callback = function(value) escapegrab = value end
})

to:CreateSection("miscellaneous")

local antimod = false

game.Players.PlayerAdded:Connect(function(player)
    if not antimod then return end
    for playerid in mods do
        if player.UserId == playerid then
            game.Players.LocalPlayer:Kick(string.format("Antimod: %s joined your game",player.Name))
        end
    end
end)

to:CreateToggle({
    Name = "Anti Mod",
    CurrentValue = false,
    Flag = "antimod",
    Callback = function(Value) antimod = value end
})

sense.Load()

ray:Notify({
    Title = "mikefx hub",
    Content = "the hub has sucessfully loaded enjoy",
    Duration = 5,
    Image = 0,
    Actions = {
       Ignore = {
          Name = "ok",
          Callback = function() end
    },
 },
 })
