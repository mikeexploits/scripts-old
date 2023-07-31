local key = Instance.new("ScreenGui")
key.Name = "Key"
key.DisplayOrder = 100
key.IgnoreGuiInset = true
key.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
key.ResetOnSpawn = false

local main = Instance.new("Frame")
main.Name = "Main"
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
main.BorderSizePixel = 0
main.Position = UDim2.fromScale(0.5, 0.5)
main.Size = UDim2.fromOffset(500, 187)

local title = Instance.new("TextLabel")
title.Name = "Title"
title.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
title.Text = "Epic Hub V3"
title.TextColor3 = Color3.fromRGB(240, 240, 240)
title.TextScaled = true
title.TextSize = 14
title.TextWrapped = true
title.TextXAlignment = Enum.TextXAlignment.Left
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1
title.BorderSizePixel = 0
title.Position = UDim2.fromScale(0.05, 0.134)
title.Size = UDim2.fromOffset(200, 16)
title.Parent = main

local uICorner = Instance.new("UICorner")
uICorner.Name = "UICorner"
uICorner.CornerRadius = UDim.new(0, 9)
uICorner.Parent = main

local shadow = Instance.new("Frame")
shadow.Name = "Shadow"
shadow.AnchorPoint = Vector2.new(0.5, 0.5)
shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
shadow.BackgroundTransparency = 1
shadow.BorderSizePixel = 0
shadow.Position = UDim2.fromScale(0.5, 0.5)
shadow.Size = UDim2.new(1, 35, 1.1, 35)
shadow.ZIndex = 0

local image = Instance.new("ImageLabel")
image.Name = "Image"
image.Image = "rbxassetid://5587865193"
image.ImageColor3 = Color3.fromRGB(20, 20, 20)
image.ImageTransparency = 0.5
image.AnchorPoint = Vector2.new(0.5, 0.5)
image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
image.BackgroundTransparency = 1
image.BorderSizePixel = 0
image.Position = UDim2.fromScale(0.5, 0.5)
image.Size = UDim2.fromScale(1.6, 1.3)
image.ZIndex = 0
image.Parent = shadow

shadow.Parent = main

local subtitle = Instance.new("TextLabel")
subtitle.Name = "Subtitle"
subtitle.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
subtitle.Text = "Key System"
subtitle.TextColor3 = Color3.fromRGB(200, 200, 200)
subtitle.TextScaled = true
subtitle.TextSize = 14
subtitle.TextWrapped = true
subtitle.TextXAlignment = Enum.TextXAlignment.Left
subtitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
subtitle.BackgroundTransparency = 1
subtitle.BorderSizePixel = 0
subtitle.Position = UDim2.fromScale(0.05, 0.222)
subtitle.Size = UDim2.fromOffset(200, 13)
subtitle.Parent = main

local input = Instance.new("Frame")
input.Name = "Input"
input.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
input.BorderSizePixel = 0
input.Position = UDim2.fromScale(0.05, 0.493)
input.Size = UDim2.fromOffset(206, 35)

local uIStroke = Instance.new("UIStroke")
uIStroke.Name = "UIStroke"
uIStroke.Color = Color3.fromRGB(65, 65, 65)
uIStroke.Parent = input

local uICorner1 = Instance.new("UICorner")
uICorner1.Name = "UICorner"
uICorner1.CornerRadius = UDim.new(0, 6)
uICorner1.Parent = input

local inputBox = Instance.new("TextBox")
inputBox.Name = "InputBox"
inputBox.ClearTextOnFocus = false
inputBox.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
inputBox.PlaceholderText = "key"
inputBox.Text = ""
inputBox.TextColor3 = Color3.fromRGB(240, 240, 240)
inputBox.TextScaled = true
inputBox.TextSize = 14
inputBox.TextWrapped = true
inputBox.TextXAlignment = Enum.TextXAlignment.Left
inputBox.AnchorPoint = Vector2.new(0.5, 0.5)
inputBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
inputBox.BackgroundTransparency = 1
inputBox.BorderSizePixel = 0
inputBox.Position = UDim2.fromScale(0.517, 0.5)
inputBox.Size = UDim2.new(1, -15, 0, 14)
inputBox.Parent = input

input.Parent = main

local keyNote = Instance.new("TextLabel")
keyNote.Name = "KeyNote"
keyNote.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
keyNote.Text = "Key"
keyNote.TextColor3 = Color3.fromRGB(150, 150, 150)
keyNote.TextScaled = true
keyNote.TextSize = 14
keyNote.TextWrapped = true
keyNote.TextXAlignment = Enum.TextXAlignment.Left
keyNote.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
keyNote.BackgroundTransparency = 1
keyNote.BorderSizePixel = 0
keyNote.Position = UDim2.fromScale(0.05, 0.388)
keyNote.Size = UDim2.fromOffset(200, 13)
keyNote.Parent = main

local noteTitle = Instance.new("TextLabel")
noteTitle.Name = "NoteTitle"
noteTitle.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
noteTitle.Text = "Note"
noteTitle.TextColor3 = Color3.fromRGB(150, 150, 150)
noteTitle.TextScaled = true
noteTitle.TextSize = 14
noteTitle.TextWrapped = true
noteTitle.TextXAlignment = Enum.TextXAlignment.Left
noteTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
noteTitle.BackgroundTransparency = 1
noteTitle.BorderSizePixel = 0
noteTitle.Position = UDim2.fromScale(0.538, 0.388)
noteTitle.Size = UDim2.fromOffset(200, 13)
noteTitle.Parent = main

local noteMessage = Instance.new("TextLabel")
noteMessage.Name = "NoteMessage"
noteMessage.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
noteMessage.Text = "Join our Discord server to get the key! discord.gg/epichub"
noteMessage.TextColor3 = Color3.fromRGB(240, 240, 240)
noteMessage.TextSize = 14
noteMessage.TextWrapped = true
noteMessage.TextXAlignment = Enum.TextXAlignment.Left
noteMessage.TextYAlignment = Enum.TextYAlignment.Top
noteMessage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
noteMessage.BackgroundTransparency = 1
noteMessage.BorderSizePixel = 0
noteMessage.Position = UDim2.fromScale(0.538, 0.47)
noteMessage.Size = UDim2.fromOffset(200, 39)
noteMessage.Parent = main

local hide = Instance.new("ImageButton")
hide.Name = "Hide"
hide.Image = "http://www.roblox.com/asset/?id=10137832201"
hide.ImageColor3 = Color3.fromRGB(240, 240, 240)
hide.ImageTransparency = 0.3
hide.ScaleType = Enum.ScaleType.Fit
hide.AnchorPoint = Vector2.new(0.5, 0.5)
hide.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hide.BackgroundTransparency = 1
hide.BorderSizePixel = 0
hide.Position = UDim2.fromScale(0.942, 0.152)
hide.Size = UDim2.fromOffset(24, 24)
hide.ZIndex = 5
hide.Parent = main

main.Parent = key