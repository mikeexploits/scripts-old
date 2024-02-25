local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/jakepscripts/moonlib/main/moonlibv1.lua'))()

local main = library:CreateWindow("mike temporary cheat", "#009dff", 9160626035)

main:CreateTab("Human")

main:CreateButton("scrap esp", "Human", function()
	local ui = Instance.new("BillboardGui"); ui.Size = UDim2.fromScale(10, 10); ui.ZIndexBehavior = Enum.ZIndexBehavior.Global; ui.Name = ""; ui.AlwaysOnTop = true;--
    local tl = Instance.new("TextLabel"); tl.Name = "t"; tl.Size = UDim2.fromScale(1,1); tl.BackgroundTransparency = 1; tl.Font = Enum.Font.TitilliumWeb; -- :3 :3  --
    tl.TextScaled = true; tl.Parent = ui; local bha = Instance.new("BoxHandleAdornment"); bha.Name = ""; bha.Transparency = 0.75; --   this coded by MISSING        --
    bha.AlwaysOnTop = true; bha.ZIndex = 0 local function esp(col, ins, txt) local h = bha:Clone(); h.Color3 = col; h.Size = ins.Size; --   this is really cool     --
    h.Adornee = ins; h.Parent = ins; local b = ui:Clone(); b.t.Text = txt; b.t.TextColor3 = col; b.Parent = ins end local co = { --   transfur outbreak esp script  --
    Tier1=Color3.new(0, 0, 1),Tier2=Color3.new(0, 1, 0),Tier3=Color3.new(1, 0, 0)}; for _,i in game.Workspace:WaitForChild("Garbage"):GetChildren() --   empty      --
    do i.ChildAdded:Connect(function(ci) esp(co[i.Name], ci, i.Name) end) for _,ci in i:GetChildren() do esp(co[i.Name], ci, i.Name) end end --   empty             --
end)

_G.ie = true
_G.killa = true

main:CreateButton("instant escape enable", "Human", function()
    _G.ie = true
    while _G.ie == true do
        game:GetService("ReplicatedStorage"):WaitForChild("Struggle"):FireServer()
        wait(0.25)
    end
end)

main:CreateButton("instant escape disable", "Human", function()
    _G.ie = false
end)

main:CreateButton("killaura enable", "Human", function()
_G.killa = true
    local remote: RemoteEvent= game:GetService("ReplicatedStorage").MeleeDamage
local localplayer = game:GetService("Players").LocalPlayer

local function dump(c)
    for a,b in c do print(a,b) end
end

local function get(cutoff)
    local output = {}
    for index, player in game:GetService("Players"):GetChildren() do
        if player.Character then
            local distance = (localplayer.Character:FindFirstChildOfClass("Humanoid").RootPart.Position - player.Character:FindFirstChildOfClass("Humanoid").RootPart.Position).Magnitude
            if distance <= cutoff then table.insert(output, player) end
        end
    end

    return output
end 

while _G.killa == true do
    local nearest = get(40)
    for index, player: Player in nearest do
        remote:FireServer(player.Character:FindFirstChildOfClass("Humanoid"), nil, true)
    end
    task.wait(0.2)
end
end)

main:CreateButton("killaura disable", "Human", function()
    _G.killa = false
end)

main:CreateButton("destroy cones", "Human", function()
    game:GetService("Workspace").Cones.Parent = game:GetService("ReplicatedFirst")
end)

main:CreateButton("return cones", "Human", function()
    game:GetService("ReplicatedFirst").Cones.Parent = workspace
end)

main:CreateButton("destroy puddles", "Human", function()
    game:GetService("Workspace").Infections.Parent = game:GetService("ReplicatedFirst")
end)

main:CreateButton("return puddles", "Human", function()
    game:GetService("ReplicatedFirst").Infections.Parent = workspace
end)

main:CreateButton("destroy safezone lock", "Human", function()
    game:GetService("Workspace").SafelockedDoors:Destroy()
end)

local kickpresence = {
    28806152, --typh
    29386942, --latte
    174105313, --ariz
    50797781, --mali
    2378802042, --ikat/taki
    70842460, --oni/foofoochan
    1318144404, -- K E L L O .
    684046090, --chezy
    684046090, --aerobello13
    28476259, --toarumi
    676069453, --godplanet
    676069453, --vanterer
    281394527, --survenir
    489413803, --nightnoob
}

local notifypresence = {
    2285638856, --quasy
    214578936, --pat
    751439181, --Ax_HS
}

main:CreateButton("antimod", "Human", function()
    local CurrentPlayer = game.Players.LocalPlayer

    game.Players.PlayerAdded:Connect(function(player)
        for _, userID in ipairs(kickpresence) do
            if player.UserId == userID then
                CurrentPlayer:Kick("mike temp cheat A mod joined. You WOULD be screwed 🥶 Contact 1-800-idontfuckingcare to restore your account.")
                return
            else
                print(player.UserId)
            end
        end
    
        for _, userID in ipairs(notifypresence) do
            if player.UserId == userID then
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "Notification",
                    Text = player.Name .. " has joined.",
                    Duration = 10,
                })
                return
            end
        end
    end)
end)

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "antimod activated",
    Text = "ay man, i got u. u wont be getting banned this time!!",
    Duration = 6.9,
})
end)

main:CreateButton("check players for schematic", "Human", function()
    local rarities = {"Rare", "Epic", "Legendary", "Ultra"}
    local schematicCount = {}
    
    for _, player in ipairs(game.Players:GetPlayers()) do
        schematicCount[player.Name] = {}
        for _, rarity in ipairs(rarities) do
            schematicCount[player.Name][rarity] = 0
        end

        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") then
                local rarity, schematicName = tool.Name:match("(%u+)%s(%a+)")
                if schematicName == "Schematic" and table.find(rarities, rarity) then
                    schematicCount[player.Name][rarity] = schematicCount[player.Name][rarity] + 1
                end
            end
        end
    end
    
    for playerName, rarities in pairs(schematicCount) do
        local notificationText = playerName .. " has:"
        local hasSchematics = false
        for rarity, count in pairs(rarities) do
            if count > 0 then
                hasSchematics = true
                notificationText = notificationText .. "\n" .. count .. " " .. rarity .. " Schematic(s)"
            end
        end
        if hasSchematics then
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "schematic! yippee",
                Text = notificationText,
                Duration = 5,
            })
        end
    end
end)

main:CreateTab("infec")

main:CreateButton("destructor ability", "infec", function()
    game:GetService("ReplicatedStorage").DestructorAbility:FireServer()
end)

main:CreateTab("dev")

main:CreateButton("hydroxide", "dev", function()
    local owner = "Upbolt"
    local branch = "revision"

    local function webImport(file)
        return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
    end

    webImport("init")
    webImport("ui/main")
end)

main:CreateButton("dex", "dev", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
end)

main:CreateButton("infinite yield", "dev", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

main:CreateButton("chat-spy", "dev", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/pqpPbVkC"))()
end)
