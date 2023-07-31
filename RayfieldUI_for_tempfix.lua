local rayfield = Instance.new("ScreenGui")
rayfield.Name = "Rayfield"
rayfield.DisplayOrder = 100
rayfield.IgnoreGuiInset = true
rayfield.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
rayfield.ResetOnSpawn = false

local main = Instance.new("Frame")
main.Name = "Main"
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
main.BorderSizePixel = 0
main.Position = UDim2.fromScale(0.5, 0.5)
main.Size = UDim2.fromOffset(500, 475)

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
shadow.Size = UDim2.new(1, 35, 1, 35)
shadow.ZIndex = 0

local image = Instance.new("ImageLabel")
image.Name = "Image"
image.Image = "rbxassetid://5587865193"
image.ImageColor3 = Color3.fromRGB(20, 20, 20)
image.ImageTransparency = 0.4
image.AnchorPoint = Vector2.new(0.5, 0.5)
image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
image.BackgroundTransparency = 1
image.BorderSizePixel = 0
image.Position = UDim2.fromScale(0.507, 0.51)
image.Size = UDim2.fromScale(1.6, 1.3)
image.ZIndex = 0
image.Parent = shadow

shadow.Parent = main

local topbar = Instance.new("Frame")
topbar.Name = "Topbar"
topbar.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
topbar.BorderSizePixel = 0
topbar.Size = UDim2.fromOffset(500, 45)
topbar.ZIndex = 5

local uICorner1 = Instance.new("UICorner")
uICorner1.Name = "UICorner"
uICorner1.CornerRadius = UDim.new(0, 9)
uICorner1.Parent = topbar

local cornerRepair = Instance.new("Frame")
cornerRepair.Name = "CornerRepair"
cornerRepair.AnchorPoint = Vector2.new(0.5, 0.5)
cornerRepair.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
cornerRepair.BorderSizePixel = 0
cornerRepair.Position = UDim2.fromScale(0.5, 0.839)
cornerRepair.Size = UDim2.fromScale(1, 0.322)
cornerRepair.ZIndex = 4
cornerRepair.Parent = topbar

local title = Instance.new("TextLabel")
title.Name = "Title"
title.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
title.Text = "Rayfield Interface Suite"
title.TextColor3 = Color3.fromRGB(240, 240, 240)
title.TextScaled = true
title.TextSize = 14
title.TextWrapped = true
title.TextXAlignment = Enum.TextXAlignment.Left
title.AnchorPoint = Vector2.new(0.5, 0.5)
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1
title.BorderSizePixel = 0
title.Position = UDim2.fromScale(0.374, 0.5)
title.Size = UDim2.fromOffset(338, 16)
title.ZIndex = 5
title.Parent = topbar

local hide = Instance.new("ImageButton")
hide.Name = "Hide"
hide.Image = "http://www.roblox.com/asset/?id=10137832201"
hide.ImageColor3 = Color3.fromRGB(240, 240, 240)
hide.ImageTransparency = 0.8
hide.ScaleType = Enum.ScaleType.Fit
hide.AnchorPoint = Vector2.new(0.5, 0.5)
hide.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hide.BackgroundTransparency = 1
hide.BorderSizePixel = 0
hide.Position = UDim2.fromScale(0.95, 0.5)
hide.Size = UDim2.fromOffset(24, 24)
hide.ZIndex = 5
hide.Parent = topbar

local divider = Instance.new("Frame")
divider.Name = "Divider"
divider.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
divider.BorderSizePixel = 0
divider.Position = UDim2.fromScale(0, 1)
divider.Size = UDim2.new(1, 0, 0, 1)
divider.Parent = topbar

local changeSize = Instance.new("ImageButton")
changeSize.Name = "ChangeSize"
changeSize.Image = "rbxassetid://10137941941"
changeSize.ImageColor3 = Color3.fromRGB(240, 240, 240)
changeSize.ImageTransparency = 0.8
changeSize.ScaleType = Enum.ScaleType.Fit
changeSize.AnchorPoint = Vector2.new(0.5, 0.5)
changeSize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
changeSize.BackgroundTransparency = 1
changeSize.BorderSizePixel = 0
changeSize.Position = UDim2.fromScale(0.89, 0.5)
changeSize.Size = UDim2.fromOffset(24, 24)
changeSize.ZIndex = 5
changeSize.Parent = topbar

local theme = Instance.new("ImageButton")
theme.Name = "Theme"
theme.Image = "rbxassetid://3926307971"
theme.ImageColor3 = Color3.fromRGB(240, 240, 240)
theme.ImageRectOffset = Vector2.new(804, 4)
theme.ImageRectSize = Vector2.new(36, 36)
theme.ImageTransparency = 0.8
theme.ScaleType = Enum.ScaleType.Fit
theme.AnchorPoint = Vector2.new(0.5, 0.5)
theme.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
theme.BackgroundTransparency = 1
theme.BorderSizePixel = 0
theme.Position = UDim2.fromScale(0.83, 0.5)
theme.Size = UDim2.fromOffset(24, 24)
theme.ZIndex = 5
theme.Parent = topbar

local uIStroke = Instance.new("UIStroke")
uIStroke.Name = "UIStroke"
uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uIStroke.Color = Color3.fromRGB(65, 65, 65)
uIStroke.Transparency = 1
uIStroke.Parent = topbar

topbar.Parent = main

local elements = Instance.new("Frame")
elements.Name = "Elements"
elements.AnchorPoint = Vector2.new(0.5, 0.5)
elements.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
elements.BackgroundTransparency = 1
elements.BorderSizePixel = 0
elements.ClipsDescendants = true
elements.Position = UDim2.fromScale(0.5, 0.601)
elements.Size = UDim2.fromOffset(475, 366)

local template = Instance.new("ScrollingFrame")
template.Name = "Template"
template.AutomaticCanvasSize = Enum.AutomaticSize.Y
template.CanvasSize = UDim2.new()
template.ScrollBarImageTransparency = 1
template.ScrollBarThickness = 0
template.Active = true
template.AnchorPoint = Vector2.new(0.5, 0.5)
template.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
template.BackgroundTransparency = 1
template.BorderSizePixel = 0
template.Position = UDim2.fromScale(0.5, 0.5)
template.Size = UDim2.fromScale(1, 1)

local uIListLayout = Instance.new("UIListLayout")
uIListLayout.Name = "UIListLayout"
uIListLayout.Padding = UDim.new(0, 6)
uIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout.Parent = template

local sectionTitle = Instance.new("Frame")
sectionTitle.Name = "SectionTitle"
sectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sectionTitle.BackgroundTransparency = 1
sectionTitle.BorderSizePixel = 0
sectionTitle.Size = UDim2.new(1, 0, 0, 15)

local title1 = Instance.new("TextLabel")
title1.Name = "Title"
title1.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
title1.Text = "Aimbot"
title1.TextColor3 = Color3.fromRGB(175, 175, 175)
title1.TextScaled = true
title1.TextSize = 14
title1.TextWrapped = true
title1.TextXAlignment = Enum.TextXAlignment.Left
title1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title1.BackgroundTransparency = 1
title1.BorderSizePixel = 0
title1.Position = UDim2.fromScale(0.011, 0.1)
title1.Size = UDim2.new(0.875, 0, 0, 13)
title1.Parent = sectionTitle

sectionTitle.Parent = template

local button = Instance.new("Frame")
button.Name = "Button"
button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
button.BorderSizePixel = 0
button.Size = UDim2.new(1, -10, 0, 35)

local uICorner2 = Instance.new("UICorner")
uICorner2.Name = "UICorner"
uICorner2.CornerRadius = UDim.new(0, 4)
uICorner2.Parent = button

local uIStroke1 = Instance.new("UIStroke")
uIStroke1.Name = "UIStroke"
uIStroke1.Color = Color3.fromRGB(50, 50, 50)
uIStroke1.Parent = button

local title2 = Instance.new("TextLabel")
title2.Name = "Title"
title2.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
title2.Text = "Reset Aimbot System"
title2.TextColor3 = Color3.fromRGB(240, 240, 240)
title2.TextScaled = true
title2.TextSize = 14
title2.TextWrapped = true
title2.TextXAlignment = Enum.TextXAlignment.Left
title2.AnchorPoint = Vector2.new(0.5, 0.5)
title2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title2.BackgroundTransparency = 1
title2.BorderSizePixel = 0
title2.Position = UDim2.fromScale(0.374, 0.5)
title2.Size = UDim2.fromOffset(315, 14)
title2.Parent = button

local elementIndicator = Instance.new("TextLabel")
elementIndicator.Name = "ElementIndicator"
elementIndicator.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
elementIndicator.Text = "button"
elementIndicator.TextColor3 = Color3.fromRGB(240, 240, 240)
elementIndicator.TextScaled = true
elementIndicator.TextSize = 14
elementIndicator.TextTransparency = 0.9
elementIndicator.TextWrapped = true
elementIndicator.TextXAlignment = Enum.TextXAlignment.Right
elementIndicator.AnchorPoint = Vector2.new(0.5, 0.5)
elementIndicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
elementIndicator.BackgroundTransparency = 1
elementIndicator.BorderSizePixel = 0
elementIndicator.Position = UDim2.fromScale(0.863, 0.5)
elementIndicator.Size = UDim2.fromOffset(108, 13)
elementIndicator.Parent = button

local interact = Instance.new("TextButton")
interact.Name = "Interact"
interact.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
interact.Text = ""
interact.TextColor3 = Color3.fromRGB(0, 0, 0)
interact.TextSize = 14
interact.TextTransparency = 1
interact.AnchorPoint = Vector2.new(0.5, 0.5)
interact.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
interact.BackgroundTransparency = 1
interact.BorderSizePixel = 0
interact.Position = UDim2.fromScale(0.5, 0.5)
interact.Size = UDim2.fromScale(1, 1)
interact.ZIndex = 5
interact.Parent = button

button.Parent = template

local toggle = Instance.new("Frame")
toggle.Name = "Toggle"
toggle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
toggle.BorderSizePixel = 0
toggle.Size = UDim2.new(1, -10, 0, 40)

local uICorner3 = Instance.new("UICorner")
uICorner3.Name = "UICorner"
uICorner3.CornerRadius = UDim.new(0, 4)
uICorner3.Parent = toggle

local title3 = Instance.new("TextLabel")
title3.Name = "Title"
title3.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
title3.Text = "Aimbot"
title3.TextColor3 = Color3.fromRGB(240, 240, 240)
title3.TextScaled = true
title3.TextSize = 14
title3.TextWrapped = true
title3.TextXAlignment = Enum.TextXAlignment.Left
title3.AnchorPoint = Vector2.new(1, 0.5)
title3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title3.BackgroundTransparency = 1
title3.BorderSizePixel = 0
title3.Position = UDim2.new(1, -63, 0, 20)
title3.Size = UDim2.fromOffset(385, 14)
title3.Parent = toggle

local uIStroke2 = Instance.new("UIStroke")
uIStroke2.Name = "UIStroke"
uIStroke2.Color = Color3.fromRGB(50, 50, 50)
uIStroke2.Parent = toggle

local interact1 = Instance.new("TextButton")
interact1.Name = "Interact"
interact1.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
interact1.Text = ""
interact1.TextColor3 = Color3.fromRGB(0, 0, 0)
interact1.TextSize = 14
interact1.TextTransparency = 1
interact1.AnchorPoint = Vector2.new(0.5, 0.5)
interact1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
interact1.BackgroundTransparency = 1
interact1.BorderSizePixel = 0
interact1.Position = UDim2.fromScale(0.815, 0.5)
interact1.Size = UDim2.fromScale(0.369, 1)
interact1.ZIndex = 5
interact1.Parent = toggle

local switch = Instance.new("Frame")
switch.Name = "Switch"
switch.AnchorPoint = Vector2.new(1, 0.5)
switch.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
switch.BorderSizePixel = 0
switch.Position = UDim2.new(1, -10, 0, 20)
switch.Size = UDim2.fromOffset(43, 21)

local uICorner4 = Instance.new("UICorner")
uICorner4.Name = "UICorner"
uICorner4.CornerRadius = UDim.new(0, 15)
uICorner4.Parent = switch

local uIStroke3 = Instance.new("UIStroke")
uIStroke3.Name = "UIStroke"
uIStroke3.Color = Color3.fromRGB(65, 65, 65)
uIStroke3.Parent = switch

local shadow1 = Instance.new("ImageLabel")
shadow1.Name = "Shadow"
shadow1.Image = "rbxassetid://3602733521"
shadow1.ImageColor3 = Color3.fromRGB(20, 20, 20)
shadow1.ImageTransparency = 0.6
shadow1.AnchorPoint = Vector2.new(0.5, 0.5)
shadow1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
shadow1.BackgroundTransparency = 1
shadow1.BorderSizePixel = 0
shadow1.Position = UDim2.fromScale(0.5, 0.5)
shadow1.Size = UDim2.new(1, 2, 1, 2)
shadow1.ZIndex = 3

local uICorner5 = Instance.new("UICorner")
uICorner5.Name = "UICorner"
uICorner5.CornerRadius = UDim.new(0, 15)
uICorner5.Parent = shadow1

shadow1.Parent = switch

local indicator = Instance.new("Frame")
indicator.Name = "Indicator"
indicator.AnchorPoint = Vector2.new(0, 0.5)
indicator.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
indicator.BorderSizePixel = 0
indicator.Position = UDim2.new(1, -40, 0.5, 0)
indicator.Size = UDim2.fromOffset(17, 17)

local uICorner6 = Instance.new("UICorner")
uICorner6.Name = "UICorner"
uICorner6.CornerRadius = UDim.new(1, 0)
uICorner6.Parent = indicator

local uIStroke4 = Instance.new("UIStroke")
uIStroke4.Name = "UIStroke"
uIStroke4.Color = Color3.fromRGB(125, 125, 125)
uIStroke4.Thickness = 1.2
uIStroke4.Parent = indicator

indicator.Parent = switch

switch.Parent = toggle

toggle.Parent = template

local sectionSpacing = Instance.new("Frame")
sectionSpacing.Name = "SectionSpacing"
sectionSpacing.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sectionSpacing.BackgroundTransparency = 1
sectionSpacing.BorderSizePixel = 0
sectionSpacing.Position = UDim2.fromScale(0, 0.481)
sectionSpacing.Size = UDim2.new(1, 0, 0, 8)
sectionSpacing.Visible = false
sectionSpacing.Parent = template

local slider = Instance.new("Frame")
slider.Name = "Slider"
slider.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
slider.BorderSizePixel = 0
slider.Position = UDim2.fromScale(0.0105, 0.45)
slider.Size = UDim2.new(1, -10, 0.028, 35)

local uICorner7 = Instance.new("UICorner")
uICorner7.Name = "UICorner"
uICorner7.CornerRadius = UDim.new(0, 4)
uICorner7.Parent = slider

local title4 = Instance.new("TextLabel")
title4.Name = "Title"
title4.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
title4.Text = "ESP Range"
title4.TextColor3 = Color3.fromRGB(240, 240, 240)
title4.TextScaled = true
title4.TextSize = 14
title4.TextWrapped = true
title4.TextXAlignment = Enum.TextXAlignment.Left
title4.AnchorPoint = Vector2.new(0.5, 0.5)
title4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title4.BackgroundTransparency = 1
title4.BorderSizePixel = 0
title4.Position = UDim2.fromScale(0.25, 0.5)
title4.Size = UDim2.fromOffset(200, 14)
title4.Parent = slider

local uIStroke5 = Instance.new("UIStroke")
uIStroke5.Name = "UIStroke"
uIStroke5.Color = Color3.fromRGB(50, 50, 50)
uIStroke5.Parent = slider

local main1 = Instance.new("Frame")
main1.Name = "Main"
main1.AnchorPoint = Vector2.new(0.5, 0.5)
main1.BackgroundColor3 = Color3.fromRGB(43, 105, 159)
main1.BackgroundTransparency = 0.8
main1.BorderSizePixel = 0
main1.Position = UDim2.fromScale(0.739, 0.5)
main1.Size = UDim2.fromOffset(222, 30)

local uIStroke6 = Instance.new("UIStroke")
uIStroke6.Name = "UIStroke"
uIStroke6.Color = Color3.fromRGB(48, 119, 177)
uIStroke6.Thickness = 1.2
uIStroke6.Transparency = 0.2
uIStroke6.Parent = main1

local uICorner8 = Instance.new("UICorner")
uICorner8.Name = "UICorner"
uICorner8.CornerRadius = UDim.new(0, 6)
uICorner8.Parent = main1

local progress = Instance.new("Frame")
progress.Name = "Progress"
progress.BackgroundColor3 = Color3.fromRGB(43, 105, 159)
progress.BorderSizePixel = 0
progress.Size = UDim2.fromScale(0.801, 1)

local uICorner9 = Instance.new("UICorner")
uICorner9.Name = "UICorner"
uICorner9.CornerRadius = UDim.new(0, 6)
uICorner9.Parent = progress

local uIStroke7 = Instance.new("UIStroke")
uIStroke7.Name = "UIStroke"
uIStroke7.Color = Color3.fromRGB(62, 158, 231)
uIStroke7.Thickness = 1.2
uIStroke7.Transparency = 0.2
uIStroke7.Parent = progress

progress.Parent = main1

local information = Instance.new("TextLabel")
information.Name = "Information"
information.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
information.Text = "750 studs"
information.TextColor3 = Color3.fromRGB(240, 240, 240)
information.TextScaled = true
information.TextSize = 14
information.TextTransparency = 0.4
information.TextWrapped = true
information.TextXAlignment = Enum.TextXAlignment.Left
information.AnchorPoint = Vector2.new(0.5, 0.5)
information.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
information.BackgroundTransparency = 1
information.BorderSizePixel = 0
information.Position = UDim2.fromScale(0.454, 0.5)
information.Size = UDim2.fromOffset(168, 15)
information.ZIndex = 5
information.Parent = main1

local shadow2 = Instance.new("ImageLabel")
shadow2.Name = "Shadow"
shadow2.Image = "rbxassetid://3602733521"
shadow2.ImageColor3 = Color3.fromRGB(20, 20, 20)
shadow2.ImageTransparency = 0.7
shadow2.AnchorPoint = Vector2.new(0.5, 0.5)
shadow2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
shadow2.BackgroundTransparency = 1
shadow2.BorderSizePixel = 0
shadow2.Position = UDim2.fromScale(0.5, 0.5)
shadow2.Size = UDim2.fromScale(1, 1)
shadow2.ZIndex = 3

local uICorner10 = Instance.new("UICorner")
uICorner10.Name = "UICorner"
uICorner10.CornerRadius = UDim.new(0, 6)
uICorner10.Parent = shadow2

shadow2.Parent = main1

local interact2 = Instance.new("TextButton")
interact2.Name = "Interact"
interact2.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
interact2.Text = ""
interact2.TextColor3 = Color3.fromRGB(0, 0, 0)
interact2.TextSize = 14
interact2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
interact2.BackgroundTransparency = 1
interact2.BorderSizePixel = 0
interact2.Size = UDim2.fromScale(1, 1)
interact2.ZIndex = 10
interact2.Parent = main1

main1.Parent = slider

slider.Parent = template

local input = Instance.new("Frame")
input.Name = "Input"
input.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
input.BorderSizePixel = 0
input.Position = UDim2.fromScale(0.0105, 0.669)
input.Size = UDim2.new(1, -10, 0, 40)

local uICorner11 = Instance.new("UICorner")
uICorner11.Name = "UICorner"
uICorner11.CornerRadius = UDim.new(0, 4)
uICorner11.Parent = input

local title5 = Instance.new("TextLabel")
title5.Name = "Title"
title5.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
title5.Text = "Target Player"
title5.TextColor3 = Color3.fromRGB(240, 240, 240)
title5.TextScaled = true
title5.TextSize = 14
title5.TextWrapped = true
title5.TextXAlignment = Enum.TextXAlignment.Left
title5.AnchorPoint = Vector2.new(0.5, 0.5)
title5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title5.BackgroundTransparency = 1
title5.BorderSizePixel = 0
title5.Position = UDim2.fromScale(0.25, 0.5)
title5.Size = UDim2.fromOffset(200, 14)
title5.Parent = input

local uIStroke8 = Instance.new("UIStroke")
uIStroke8.Name = "UIStroke"
uIStroke8.Color = Color3.fromRGB(50, 50, 50)
uIStroke8.Parent = input

local inputFrame = Instance.new("Frame")
inputFrame.Name = "InputFrame"
inputFrame.AnchorPoint = Vector2.new(1, 0.5)
inputFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
inputFrame.BorderSizePixel = 0
inputFrame.Position = UDim2.new(1, -7, 0, 20)
inputFrame.Size = UDim2.fromOffset(120, 30)

local inputBox = Instance.new("TextBox")
inputBox.Name = "InputBox"
inputBox.ClearTextOnFocus = false
inputBox.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
inputBox.PlaceholderText = "Dynamic Input"
inputBox.Text = ""
inputBox.TextColor3 = Color3.fromRGB(240, 240, 240)
inputBox.TextSize = 14
inputBox.AnchorPoint = Vector2.new(0.5, 0.5)
inputBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
inputBox.BackgroundTransparency = 1
inputBox.BorderSizePixel = 0
inputBox.Position = UDim2.fromScale(0.5, 0.5)
inputBox.Size = UDim2.new(1, -15, 0, 14)
inputBox.Parent = inputFrame

local uIStroke9 = Instance.new("UIStroke")
uIStroke9.Name = "UIStroke"
uIStroke9.Color = Color3.fromRGB(65, 65, 65)
uIStroke9.Parent = inputFrame

local uICorner12 = Instance.new("UICorner")
uICorner12.Name = "UICorner"
uICorner12.CornerRadius = UDim.new(0, 5)
uICorner12.Parent = inputFrame

inputFrame.Parent = input

input.Parent = template

local keybind = Instance.new("Frame")
keybind.Name = "Keybind"
keybind.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
keybind.BorderSizePixel = 0
keybind.Position = UDim2.fromScale(0.0105, 0.669)
keybind.Size = UDim2.new(1, -10, 0, 40)

local uICorner13 = Instance.new("UICorner")
uICorner13.Name = "UICorner"
uICorner13.CornerRadius = UDim.new(0, 4)
uICorner13.Parent = keybind

local title6 = Instance.new("TextLabel")
title6.Name = "Title"
title6.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
title6.Text = "Target Keybind"
title6.TextColor3 = Color3.fromRGB(240, 240, 240)
title6.TextScaled = true
title6.TextSize = 14
title6.TextWrapped = true
title6.TextXAlignment = Enum.TextXAlignment.Left
title6.AnchorPoint = Vector2.new(0.5, 0.5)
title6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title6.BackgroundTransparency = 1
title6.BorderSizePixel = 0
title6.Position = UDim2.fromScale(0.25, 0.5)
title6.Size = UDim2.fromOffset(200, 14)
title6.Parent = keybind

local uIStroke10 = Instance.new("UIStroke")
uIStroke10.Name = "UIStroke"
uIStroke10.Color = Color3.fromRGB(50, 50, 50)
uIStroke10.Parent = keybind

local keybindFrame = Instance.new("Frame")
keybindFrame.Name = "KeybindFrame"
keybindFrame.AnchorPoint = Vector2.new(1, 0.5)
keybindFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
keybindFrame.BorderSizePixel = 0
keybindFrame.Position = UDim2.new(1, -7, 0, 20)
keybindFrame.Size = UDim2.fromOffset(34, 30)

local keybindBox = Instance.new("TextBox")
keybindBox.Name = "KeybindBox"
keybindBox.ClearTextOnFocus = false
keybindBox.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
keybindBox.PlaceholderText = "Keybind"
keybindBox.Text = "Q"
keybindBox.TextColor3 = Color3.fromRGB(240, 240, 240)
keybindBox.TextSize = 14
keybindBox.AnchorPoint = Vector2.new(0.5, 0.5)
keybindBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
keybindBox.BackgroundTransparency = 1
keybindBox.BorderSizePixel = 0
keybindBox.Position = UDim2.fromScale(0.5, 0.5)
keybindBox.Size = UDim2.new(1, -15, 0, 14)
keybindBox.Parent = keybindFrame

local uIStroke11 = Instance.new("UIStroke")
uIStroke11.Name = "UIStroke"
uIStroke11.Color = Color3.fromRGB(65, 65, 65)
uIStroke11.Parent = keybindFrame

local uICorner14 = Instance.new("UICorner")
uICorner14.Name = "UICorner"
uICorner14.CornerRadius = UDim.new(0, 5)
uICorner14.Parent = keybindFrame

keybindFrame.Parent = keybind

keybind.Parent = template

local dropdown = Instance.new("Frame")
dropdown.Name = "Dropdown"
dropdown.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
dropdown.BorderSizePixel = 0
dropdown.Position = UDim2.fromScale(-0.00632, 0.396)
dropdown.Size = UDim2.new(1, -10, 0, 180)

local uICorner15 = Instance.new("UICorner")
uICorner15.Name = "UICorner"
uICorner15.CornerRadius = UDim.new(0, 4)
uICorner15.Parent = dropdown

local title7 = Instance.new("TextLabel")
title7.Name = "Title"
title7.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
title7.Text = "Dropdown"
title7.TextColor3 = Color3.fromRGB(240, 240, 240)
title7.TextScaled = true
title7.TextSize = 14
title7.TextWrapped = true
title7.TextXAlignment = Enum.TextXAlignment.Left
title7.AnchorPoint = Vector2.new(0.5, 0.5)
title7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title7.BackgroundTransparency = 1
title7.BorderSizePixel = 0
title7.Position = UDim2.fromOffset(135, 21)
title7.Size = UDim2.fromOffset(237, 14)
title7.ZIndex = 3
title7.Parent = dropdown

local uIStroke12 = Instance.new("UIStroke")
uIStroke12.Name = "UIStroke"
uIStroke12.Color = Color3.fromRGB(50, 50, 50)
uIStroke12.Parent = dropdown

local list = Instance.new("ScrollingFrame")
list.Name = "List"
list.AutomaticCanvasSize = Enum.AutomaticSize.Y
list.ScrollBarImageColor3 = Color3.fromRGB(240, 240, 240)
list.ScrollBarImageTransparency = 0.7
list.ScrollBarThickness = 3
list.Active = true
list.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
list.BackgroundTransparency = 1
list.BorderSizePixel = 0
list.Position = UDim2.fromOffset(0, 38)
list.Size = UDim2.fromOffset(465, 126)

local uIListLayout1 = Instance.new("UIListLayout")
uIListLayout1.Name = "UIListLayout"
uIListLayout1.Padding = UDim.new(0, 5)
uIListLayout1.HorizontalAlignment = Enum.HorizontalAlignment.Center
uIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout1.Parent = list

local placeholder = Instance.new("Frame")
placeholder.Name = "Placeholder"
placeholder.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
placeholder.BorderSizePixel = 0
placeholder.LayoutOrder = -100
placeholder.Position = UDim2.fromScale(0.392, 0)
placeholder.Parent = list

local template1 = Instance.new("Frame")
template1.Name = "Template"
template1.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
template1.BorderSizePixel = 0
template1.Position = UDim2.fromScale(0.392, 0)
template1.Size = UDim2.new(0.97, 0, 0, 38)

local uICorner16 = Instance.new("UICorner")
uICorner16.Name = "UICorner"
uICorner16.CornerRadius = UDim.new(0, 5)
uICorner16.Parent = template1

local uIStroke13 = Instance.new("UIStroke")
uIStroke13.Name = "UIStroke"
uIStroke13.Color = Color3.fromRGB(50, 50, 50)
uIStroke13.Parent = template1

local title8 = Instance.new("TextLabel")
title8.Name = "Title"
title8.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
title8.Text = "Option"
title8.TextColor3 = Color3.fromRGB(240, 240, 240)
title8.TextScaled = true
title8.TextSize = 14
title8.TextWrapped = true
title8.TextXAlignment = Enum.TextXAlignment.Left
title8.AnchorPoint = Vector2.new(0.5, 0.5)
title8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title8.BackgroundTransparency = 1
title8.BorderSizePixel = 0
title8.Position = UDim2.fromScale(0.385, 0.5)
title8.Size = UDim2.fromOffset(316, 14)
title8.Parent = template1

local interact3 = Instance.new("TextButton")
interact3.Name = "Interact"
interact3.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
interact3.Text = ""
interact3.TextColor3 = Color3.fromRGB(0, 0, 0)
interact3.TextSize = 1
interact3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
interact3.BackgroundTransparency = 1
interact3.BorderSizePixel = 0
interact3.Size = UDim2.fromScale(1, 1)
interact3.ZIndex = 5
interact3.Parent = template1

template1.Parent = list

list.Parent = dropdown

local selected = Instance.new("TextLabel")
selected.Name = "Selected"
selected.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
selected.Text = "Option #1"
selected.TextColor3 = Color3.fromRGB(150, 150, 150)
selected.TextScaled = true
selected.TextSize = 14
selected.TextWrapped = true
selected.TextXAlignment = Enum.TextXAlignment.Right
selected.AnchorPoint = Vector2.new(0.5, 0.5)
selected.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
selected.BackgroundTransparency = 1
selected.BorderSizePixel = 0
selected.Position = UDim2.fromOffset(340, 21)
selected.Size = UDim2.fromOffset(168, 14)

local uITextSizeConstraint = Instance.new("UITextSizeConstraint")
uITextSizeConstraint.Name = "UITextSizeConstraint"
uITextSizeConstraint.MaxTextSize = 14
uITextSizeConstraint.Parent = selected

selected.Parent = dropdown

local toggle1 = Instance.new("ImageButton")
toggle1.Name = "Toggle"
toggle1.Image = "rbxassetid://3926305904"
toggle1.ImageColor3 = Color3.fromRGB(150, 150, 150)
toggle1.ImageRectOffset = Vector2.new(564, 284)
toggle1.ImageRectSize = Vector2.new(36, 36)
toggle1.AnchorPoint = Vector2.new(0.5, 0.5)
toggle1.BackgroundTransparency = 1
toggle1.BorderSizePixel = 0
toggle1.LayoutOrder = 9
toggle1.Position = UDim2.fromOffset(441, 21)
toggle1.Size = UDim2.fromOffset(32, 28)
toggle1.Parent = dropdown

local interact4 = Instance.new("TextButton")
interact4.Name = "Interact"
interact4.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
interact4.Text = ""
interact4.TextColor3 = Color3.fromRGB(0, 0, 0)
interact4.TextSize = 14
interact4.TextTransparency = 1
interact4.AnchorPoint = Vector2.new(0.5, 0.5)
interact4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
interact4.BackgroundTransparency = 1
interact4.BorderSizePixel = 0
interact4.Position = UDim2.fromScale(0.5, 0.5)
interact4.Size = UDim2.fromScale(1, 1)
interact4.ZIndex = 5
interact4.Parent = dropdown

dropdown.Parent = template

local label = Instance.new("Frame")
label.Name = "Label"
label.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
label.BorderSizePixel = 0
label.Size = UDim2.new(1, -10, 0, 35)

local uICorner17 = Instance.new("UICorner")
uICorner17.Name = "UICorner"
uICorner17.CornerRadius = UDim.new(0, 4)
uICorner17.Parent = label

local uIStroke14 = Instance.new("UIStroke")
uIStroke14.Name = "UIStroke"
uIStroke14.Color = Color3.fromRGB(40, 40, 40)
uIStroke14.Parent = label

local title9 = Instance.new("TextLabel")
title9.Name = "Title"
title9.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
title9.TextColor3 = Color3.fromRGB(240, 240, 240)
title9.TextScaled = true
title9.TextSize = 14
title9.TextWrapped = true
title9.TextXAlignment = Enum.TextXAlignment.Left
title9.AnchorPoint = Vector2.new(0.5, 0.5)
title9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title9.BackgroundTransparency = 1
title9.BorderSizePixel = 0
title9.Position = UDim2.fromScale(0.51, 0.5)
title9.Size = UDim2.fromOffset(441, 14)
title9.Parent = label

label.Parent = template

local paragraph = Instance.new("Frame")
paragraph.Name = "Paragraph"
paragraph.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
paragraph.BorderSizePixel = 0
paragraph.Position = UDim2.fromScale(0.0105, 0.315)
paragraph.Size = UDim2.new(1, -10, 0, 130)

local uICorner18 = Instance.new("UICorner")
uICorner18.Name = "UICorner"
uICorner18.CornerRadius = UDim.new(0, 4)
uICorner18.Parent = paragraph

local uIStroke15 = Instance.new("UIStroke")
uIStroke15.Name = "UIStroke"
uIStroke15.Color = Color3.fromRGB(40, 40, 40)
uIStroke15.Parent = paragraph

local title10 = Instance.new("TextLabel")
title10.Name = "Title"
title10.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
title10.Text = "Paragraph Title"
title10.TextColor3 = Color3.fromRGB(240, 240, 240)
title10.TextScaled = true
title10.TextSize = 14
title10.TextWrapped = true
title10.TextXAlignment = Enum.TextXAlignment.Left
title10.AnchorPoint = Vector2.new(1, 0.5)
title10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title10.BackgroundTransparency = 1
title10.BorderSizePixel = 0
title10.Position = UDim2.new(1, -10, 0, 18)
title10.Size = UDim2.fromOffset(438, 14)
title10.Parent = paragraph

local content = Instance.new("TextLabel")
content.Name = "Content"
content.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
content.Text = "Paragraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph ContentParagraph Content"
content.TextColor3 = Color3.fromRGB(180, 180, 180)
content.TextSize = 13
content.TextWrapped = true
content.TextXAlignment = Enum.TextXAlignment.Left
content.TextYAlignment = Enum.TextYAlignment.Top
content.AnchorPoint = Vector2.new(1, 0.5)
content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
content.BackgroundTransparency = 1
content.BorderSizePixel = 0
content.Position = UDim2.new(1, -10, 0.575, 0)
content.Size = UDim2.fromOffset(438, 96)
content.Parent = paragraph

paragraph.Parent = template

local color = Instance.new("Frame")
color.Name = "Color"
color.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
color.BorderSizePixel = 0
color.Position = UDim2.fromScale(0.0105, 0.573)
color.Size = UDim2.new(1, -10, 0.349, 35)
color.Visible = false

local uICorner19 = Instance.new("UICorner")
uICorner19.Name = "UICorner"
uICorner19.CornerRadius = UDim.new(0, 4)
uICorner19.Parent = color

local title11 = Instance.new("TextLabel")
title11.Name = "Title"
title11.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
title11.Text = "Color"
title11.TextColor3 = Color3.fromRGB(240, 240, 240)
title11.TextScaled = true
title11.TextSize = 14
title11.TextWrapped = true
title11.TextXAlignment = Enum.TextXAlignment.Left
title11.AnchorPoint = Vector2.new(1, 0.5)
title11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title11.BackgroundTransparency = 1
title11.BorderSizePixel = 0
title11.Position = UDim2.new(1, -10, 0, 18)
title11.Size = UDim2.fromOffset(438, 14)
title11.Parent = color

local interact5 = Instance.new("TextButton")
interact5.Name = "Interact"
interact5.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
interact5.Text = ""
interact5.TextColor3 = Color3.fromRGB(0, 0, 0)
interact5.TextSize = 14
interact5.TextTransparency = 1
interact5.AnchorPoint = Vector2.new(0.5, 0.5)
interact5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
interact5.BackgroundTransparency = 1
interact5.BorderSizePixel = 0
interact5.Position = UDim2.fromScale(0.5, 0.5)
interact5.Size = UDim2.fromScale(1, 1)
interact5.ZIndex = 5
interact5.Parent = color

local uIStroke16 = Instance.new("UIStroke")
uIStroke16.Name = "UIStroke"
uIStroke16.Color = Color3.fromRGB(50, 50, 50)
uIStroke16.Parent = color

local main2 = Instance.new("Frame")
main2.Name = "Main"
main2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
main2.BackgroundTransparency = 1
main2.BorderSizePixel = 0
main2.Position = UDim2.fromScale(0.0344, 0.203)
main2.Size = UDim2.fromOffset(438, 121)
main2.Parent = color

color.Parent = template

local placeholder1 = Instance.new("Frame")
placeholder1.Name = "Placeholder"
placeholder1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
placeholder1.BorderSizePixel = 0
placeholder1.LayoutOrder = 1e+03
placeholder1.Parent = template

local colorPicker = Instance.new("Frame")
colorPicker.Name = "ColorPicker"
colorPicker.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
colorPicker.BorderSizePixel = 0
colorPicker.Position = UDim2.fromScale(0.0105, 0.574)
colorPicker.Size = UDim2.new(1, -10, 0, 120)

local uICorner20 = Instance.new("UICorner")
uICorner20.Name = "UICorner"
uICorner20.CornerRadius = UDim.new(0, 4)
uICorner20.Parent = colorPicker

local interact6 = Instance.new("TextButton")
interact6.Name = "Interact"
interact6.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
interact6.Text = ""
interact6.TextColor3 = Color3.fromRGB(0, 0, 0)
interact6.TextSize = 14
interact6.TextTransparency = 1
interact6.AnchorPoint = Vector2.new(0.5, 0.5)
interact6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
interact6.BackgroundTransparency = 1
interact6.BorderSizePixel = 0
interact6.Position = UDim2.fromScale(0.289, 0.5)
interact6.Size = UDim2.fromScale(0.574, 1)
interact6.ZIndex = 5
interact6.Parent = colorPicker

local cPBackground = Instance.new("Frame")
cPBackground.Name = "CPBackground"
cPBackground.AnchorPoint = Vector2.new(1, 0)
cPBackground.BackgroundColor3 = Color3.fromRGB(98, 255, 0)
cPBackground.BorderSizePixel = 0
cPBackground.Position = UDim2.fromOffset(449, 11)
cPBackground.Size = UDim2.fromOffset(173, 86)

local mainCP = Instance.new("ImageButton")
mainCP.Name = "MainCP"
mainCP.Image = "http://www.roblox.com/asset/?id=11413591840"
mainCP.ImageTransparency = 0.1
mainCP.AnchorPoint = Vector2.new(0.5, 0.5)
mainCP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainCP.BackgroundTransparency = 1
mainCP.BorderSizePixel = 0
mainCP.Position = UDim2.fromScale(0.5, 0.5)
mainCP.Size = UDim2.fromScale(1, 1)

local uICorner21 = Instance.new("UICorner")
uICorner21.Name = "UICorner"
uICorner21.CornerRadius = UDim.new(0, 5)
uICorner21.Parent = mainCP

local mainPoint = Instance.new("ImageButton")
mainPoint.Name = "MainPoint"
mainPoint.Image = "http://www.roblox.com/asset/?id=3259050989"
mainPoint.ImageColor3 = Color3.fromRGB(28, 72, 0)
mainPoint.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainPoint.BackgroundTransparency = 1
mainPoint.Position = UDim2.fromScale(0.183, 0.249)
mainPoint.Size = UDim2.fromOffset(59, 59)
mainPoint.Parent = mainCP

mainCP.Parent = cPBackground

local uICorner22 = Instance.new("UICorner")
uICorner22.Name = "UICorner"
uICorner22.CornerRadius = UDim.new(0, 6)
uICorner22.Parent = cPBackground

local display = Instance.new("Frame")
display.Name = "Display"
display.AnchorPoint = Vector2.new(0.5, 0.5)
display.BackgroundColor3 = Color3.fromRGB(98, 255, 0)
display.Position = UDim2.fromScale(0.5, 0.5)
display.Size = UDim2.fromScale(1, 1)

local uICorner23 = Instance.new("UICorner")
uICorner23.Name = "UICorner"
uICorner23.CornerRadius = UDim.new(0, 6)
uICorner23.Parent = display

local frame = Instance.new("Frame")
frame.Name = "Frame"
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BackgroundTransparency = 0.75
frame.BorderSizePixel = 0
frame.Position = UDim2.fromScale(0.5, 0.5)
frame.Size = UDim2.fromScale(1, 1)

local uICorner24 = Instance.new("UICorner")
uICorner24.Name = "UICorner"
uICorner24.CornerRadius = UDim.new(0, 6)
uICorner24.Parent = frame

frame.Parent = display

display.Parent = cPBackground

cPBackground.Parent = colorPicker

local hexInput = Instance.new("Frame")
hexInput.Name = "HexInput"
hexInput.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
hexInput.BorderSizePixel = 0
hexInput.Position = UDim2.fromOffset(17, 73)
hexInput.Size = UDim2.fromOffset(119, 31)
hexInput.ZIndex = 10

local uICorner25 = Instance.new("UICorner")
uICorner25.Name = "UICorner"
uICorner25.CornerRadius = UDim.new(0, 4)
uICorner25.Parent = hexInput

local uIStroke17 = Instance.new("UIStroke")
uIStroke17.Name = "UIStroke"
uIStroke17.Color = Color3.fromRGB(60, 60, 60)
uIStroke17.Parent = hexInput

local inputBox1 = Instance.new("TextBox")
inputBox1.Name = "InputBox"
inputBox1.ClearTextOnFocus = false
inputBox1.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
inputBox1.PlaceholderText = "hex"
inputBox1.Text = ""
inputBox1.TextColor3 = Color3.fromRGB(200, 200, 200)
inputBox1.TextSize = 14
inputBox1.TextXAlignment = Enum.TextXAlignment.Left
inputBox1.AnchorPoint = Vector2.new(0.5, 0.5)
inputBox1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
inputBox1.BackgroundTransparency = 1
inputBox1.BorderSizePixel = 0
inputBox1.Position = UDim2.fromScale(0.5, 0.5)
inputBox1.Size = UDim2.new(0.98, -15, 0, 14)
inputBox1.ZIndex = 10
inputBox1.Parent = hexInput

hexInput.Parent = colorPicker

local colorSlider = Instance.new("ImageButton")
colorSlider.Name = "ColorSlider"
colorSlider.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
colorSlider.AnchorPoint = Vector2.new(1, 0)
colorSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
colorSlider.ClipsDescendants = true
colorSlider.Position = UDim2.fromOffset(449, 102)
colorSlider.Size = UDim2.fromOffset(173, 12)

local uIGradient = Instance.new("UIGradient")
uIGradient.Name = "UIGradient"
uIGradient.Color = ColorSequence.new({
  ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
  ColorSequenceKeypoint.new(0.0557, Color3.fromRGB(255, 85, 0)),
  ColorSequenceKeypoint.new(0.111, Color3.fromRGB(255, 170, 0)),
  ColorSequenceKeypoint.new(0.167, Color3.fromRGB(254, 255, 0)),
  ColorSequenceKeypoint.new(0.223, Color3.fromRGB(169, 255, 0)),
  ColorSequenceKeypoint.new(0.279, Color3.fromRGB(84, 255, 0)),
  ColorSequenceKeypoint.new(0.334, Color3.fromRGB(0, 255, 1)),
  ColorSequenceKeypoint.new(0.39, Color3.fromRGB(0, 255, 87)),
  ColorSequenceKeypoint.new(0.446, Color3.fromRGB(0, 255, 172)),
  ColorSequenceKeypoint.new(0.501, Color3.fromRGB(0, 253, 255)),
  ColorSequenceKeypoint.new(0.557, Color3.fromRGB(0, 168, 255)),
  ColorSequenceKeypoint.new(0.613, Color3.fromRGB(0, 82, 255)),
  ColorSequenceKeypoint.new(0.669, Color3.fromRGB(3, 0, 255)),
  ColorSequenceKeypoint.new(0.724, Color3.fromRGB(88, 0, 255)),
  ColorSequenceKeypoint.new(0.78, Color3.fromRGB(173, 0, 255)),
  ColorSequenceKeypoint.new(0.836, Color3.fromRGB(255, 0, 251)),
  ColorSequenceKeypoint.new(0.891, Color3.fromRGB(255, 0, 166)),
  ColorSequenceKeypoint.new(0.947, Color3.fromRGB(255, 0, 81)),
  ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)),
})
uIGradient.Parent = colorSlider

local sliderPoint = Instance.new("ImageButton")
sliderPoint.Name = "SliderPoint"
sliderPoint.Image = "http://www.roblox.com/asset/?id=3259050989"
sliderPoint.ImageColor3 = Color3.fromRGB(0, 255, 0)
sliderPoint.AnchorPoint = Vector2.new(0, 0.5)
sliderPoint.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sliderPoint.BackgroundTransparency = 1
sliderPoint.Position = UDim2.fromScale(0.182, 0.5)
sliderPoint.Size = UDim2.fromOffset(59, 59)
sliderPoint.Parent = colorSlider

local tintAdder = Instance.new("TextLabel")
tintAdder.Name = "TintAdder"
tintAdder.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
tintAdder.Text = ""
tintAdder.TextColor3 = Color3.fromRGB(0, 0, 0)
tintAdder.TextSize = 14
tintAdder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
tintAdder.BackgroundTransparency = 0.8
tintAdder.Size = UDim2.fromScale(1, 1)

local uICorner26 = Instance.new("UICorner")
uICorner26.Name = "UICorner"
uICorner26.CornerRadius = UDim.new(0, 6)
uICorner26.Parent = tintAdder

tintAdder.Parent = colorSlider

local uICorner27 = Instance.new("UICorner")
uICorner27.Name = "UICorner"
uICorner27.CornerRadius = UDim.new(0, 6)
uICorner27.Parent = colorSlider

colorSlider.Parent = colorPicker

local title12 = Instance.new("TextLabel")
title12.Name = "Title"
title12.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
title12.Text = "Color Picker"
title12.TextColor3 = Color3.fromRGB(240, 240, 240)
title12.TextScaled = true
title12.TextSize = 14
title12.TextWrapped = true
title12.TextXAlignment = Enum.TextXAlignment.Left
title12.AnchorPoint = Vector2.new(0.5, 0.5)
title12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title12.BackgroundTransparency = 1
title12.BorderSizePixel = 0
title12.Position = UDim2.fromOffset(135, 22)
title12.Size = UDim2.fromOffset(237, 14)
title12.ZIndex = 3
title12.Parent = colorPicker

local rGB = Instance.new("Frame")
rGB.Name = "RGB"
rGB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rGB.BackgroundTransparency = 1
rGB.Position = UDim2.fromOffset(17, 40)
rGB.Size = UDim2.fromOffset(232, 29)

local uIListLayout2 = Instance.new("UIListLayout")
uIListLayout2.Name = "UIListLayout"
uIListLayout2.Padding = UDim.new(0, 5)
uIListLayout2.FillDirection = Enum.FillDirection.Horizontal
uIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout2.Parent = rGB

local gInput = Instance.new("Frame")
gInput.Name = "GInput"
gInput.AnchorPoint = Vector2.new(1, 0.5)
gInput.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
gInput.BorderSizePixel = 0
gInput.LayoutOrder = 1
gInput.Position = UDim2.new(0.36, -7, 0.496, 0)
gInput.Size = UDim2.fromOffset(54, 27)
gInput.ZIndex = 10

local uICorner28 = Instance.new("UICorner")
uICorner28.Name = "UICorner"
uICorner28.CornerRadius = UDim.new(0, 5)
uICorner28.Parent = gInput

local inputBox2 = Instance.new("TextBox")
inputBox2.Name = "InputBox"
inputBox2.ClearTextOnFocus = false
inputBox2.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
inputBox2.PlaceholderText = "G"
inputBox2.Text = ""
inputBox2.TextColor3 = Color3.fromRGB(200, 200, 200)
inputBox2.TextSize = 12
inputBox2.TextXAlignment = Enum.TextXAlignment.Left
inputBox2.AnchorPoint = Vector2.new(0.5, 0.5)
inputBox2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
inputBox2.BackgroundTransparency = 1
inputBox2.BorderSizePixel = 0
inputBox2.Position = UDim2.fromScale(0.5, 0.5)
inputBox2.Size = UDim2.new(0.874, -15, 0, 14)
inputBox2.ZIndex = 10
inputBox2.Parent = gInput

local uIStroke18 = Instance.new("UIStroke")
uIStroke18.Name = "UIStroke"
uIStroke18.Color = Color3.fromRGB(60, 60, 60)
uIStroke18.Parent = gInput

gInput.Parent = rGB

local rInput = Instance.new("Frame")
rInput.Name = "RInput"
rInput.AnchorPoint = Vector2.new(1, 0.5)
rInput.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
rInput.BorderSizePixel = 0
rInput.Position = UDim2.new(0.182, -5, 0.496, 0)
rInput.Size = UDim2.fromOffset(54, 27)
rInput.ZIndex = 10

local uICorner29 = Instance.new("UICorner")
uICorner29.Name = "UICorner"
uICorner29.CornerRadius = UDim.new(0, 5)
uICorner29.Parent = rInput

local inputBox3 = Instance.new("TextBox")
inputBox3.Name = "InputBox"
inputBox3.ClearTextOnFocus = false
inputBox3.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
inputBox3.PlaceholderText = "R"
inputBox3.Text = ""
inputBox3.TextColor3 = Color3.fromRGB(200, 200, 200)
inputBox3.TextSize = 12
inputBox3.TextXAlignment = Enum.TextXAlignment.Left
inputBox3.AnchorPoint = Vector2.new(0.5, 0.5)
inputBox3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
inputBox3.BackgroundTransparency = 1
inputBox3.BorderSizePixel = 0
inputBox3.Position = UDim2.fromScale(0.5, 0.5)
inputBox3.Size = UDim2.new(0.874, -15, 0, 14)
inputBox3.ZIndex = 10
inputBox3.Parent = rInput

local uIStroke19 = Instance.new("UIStroke")
uIStroke19.Name = "UIStroke"
uIStroke19.Color = Color3.fromRGB(60, 60, 60)
uIStroke19.Parent = rInput

rInput.Parent = rGB

local bInput = Instance.new("Frame")
bInput.Name = "BInput"
bInput.AnchorPoint = Vector2.new(1, 0.5)
bInput.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
bInput.BorderSizePixel = 0
bInput.LayoutOrder = 2
bInput.Position = UDim2.new(0.928, -5, 0.466, 0)
bInput.Size = UDim2.fromOffset(54, 27)
bInput.ZIndex = 10

local uICorner30 = Instance.new("UICorner")
uICorner30.Name = "UICorner"
uICorner30.CornerRadius = UDim.new(0, 5)
uICorner30.Parent = bInput

local inputBox4 = Instance.new("TextBox")
inputBox4.Name = "InputBox"
inputBox4.ClearTextOnFocus = false
inputBox4.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
inputBox4.PlaceholderText = "B"
inputBox4.Text = ""
inputBox4.TextColor3 = Color3.fromRGB(200, 200, 200)
inputBox4.TextSize = 12
inputBox4.TextXAlignment = Enum.TextXAlignment.Left
inputBox4.AnchorPoint = Vector2.new(0.5, 0.5)
inputBox4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
inputBox4.BackgroundTransparency = 1
inputBox4.BorderSizePixel = 0
inputBox4.Position = UDim2.fromScale(0.5, 0.5)
inputBox4.Size = UDim2.new(0.874, -15, 0, 14)
inputBox4.ZIndex = 10
inputBox4.Parent = bInput

local uIStroke20 = Instance.new("UIStroke")
uIStroke20.Name = "UIStroke"
uIStroke20.Color = Color3.fromRGB(60, 60, 60)
uIStroke20.Parent = bInput

bInput.Parent = rGB

rGB.Parent = colorPicker

local uIStroke21 = Instance.new("UIStroke")
uIStroke21.Name = "UIStroke"
uIStroke21.Color = Color3.fromRGB(50, 50, 50)
uIStroke21.Parent = colorPicker

colorPicker.Parent = template

template.Parent = elements

local uIPageLayout = Instance.new("UIPageLayout")
uIPageLayout.Name = "UIPageLayout"
uIPageLayout.EasingStyle = Enum.EasingStyle.Quint
uIPageLayout.TweenTime = 0.8
uIPageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
uIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
uIPageLayout.VerticalAlignment = Enum.VerticalAlignment.Center
uIPageLayout.Parent = elements

elements.Parent = main

local loadingFrame = Instance.new("Frame")
loadingFrame.Name = "LoadingFrame"
loadingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
loadingFrame.BackgroundTransparency = 1
loadingFrame.BorderSizePixel = 0
loadingFrame.Size = UDim2.fromScale(1, 1)
loadingFrame.Visible = false
loadingFrame.ZIndex = 30

local title13 = Instance.new("TextLabel")
title13.Name = "Title"
title13.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Bold,
  Enum.FontStyle.Normal
)
title13.Text = "Rayfield Interface Library"
title13.TextColor3 = Color3.fromRGB(240, 240, 240)
title13.TextScaled = true
title13.TextSize = 14
title13.TextWrapped = true
title13.TextXAlignment = Enum.TextXAlignment.Left
title13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title13.BackgroundTransparency = 1
title13.BorderSizePixel = 0
title13.Position = UDim2.fromScale(0.056, 0.44)
title13.Size = UDim2.fromOffset(332, 15)
title13.Parent = loadingFrame

local subtitle = Instance.new("TextLabel")
subtitle.Name = "Subtitle"
subtitle.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json")
subtitle.Text = "by Sirius"
subtitle.TextColor3 = Color3.fromRGB(200, 200, 200)
subtitle.TextScaled = true
subtitle.TextSize = 14
subtitle.TextWrapped = true
subtitle.TextXAlignment = Enum.TextXAlignment.Left
subtitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
subtitle.BackgroundTransparency = 1
subtitle.BorderSizePixel = 0
subtitle.Position = UDim2.fromScale(0.056, 0.503)
subtitle.Size = UDim2.fromOffset(200, 13)
subtitle.Parent = loadingFrame

local version = Instance.new("TextLabel")
version.Name = "Version"
version.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json")
version.Text = "release R1"
version.TextColor3 = Color3.fromRGB(70, 70, 70)
version.TextScaled = true
version.TextSize = 14
version.TextWrapped = true
version.TextXAlignment = Enum.TextXAlignment.Right
version.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
version.BackgroundTransparency = 1
version.BorderSizePixel = 0
version.Position = UDim2.fromScale(0.674, 0.912)
version.Size = UDim2.fromOffset(134, 13)
version.Parent = loadingFrame

loadingFrame.Parent = main

local tabList = Instance.new("ScrollingFrame")
tabList.Name = "TabList"
tabList.AutomaticCanvasSize = Enum.AutomaticSize.X
tabList.CanvasSize = UDim2.new()
tabList.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
tabList.ScrollBarThickness = 0
tabList.ScrollingDirection = Enum.ScrollingDirection.X
tabList.Active = true
tabList.AnchorPoint = Vector2.new(0.5, 0.5)
tabList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tabList.BackgroundTransparency = 1
tabList.BorderSizePixel = 0
tabList.Position = UDim2.fromScale(0.496, 0.155)
tabList.Size = UDim2.fromOffset(471, 36)

local template2 = Instance.new("Frame")
template2.Name = "Template"
template2.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
template2.BackgroundTransparency = 0.7
template2.BorderSizePixel = 0
template2.Position = UDim2.fromScale(0.174, 0)
template2.Size = UDim2.fromOffset(110, 30)

local uICorner31 = Instance.new("UICorner")
uICorner31.Name = "UICorner"
uICorner31.CornerRadius = UDim.new(1, 0)
uICorner31.Parent = template2

local uIStroke22 = Instance.new("UIStroke")
uIStroke22.Name = "UIStroke"
uIStroke22.Color = Color3.fromRGB(85, 85, 85)
uIStroke22.Parent = template2

local title14 = Instance.new("TextLabel")
title14.Name = "Title"
title14.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
title14.Text = "Automation"
title14.TextColor3 = Color3.fromRGB(240, 240, 240)
title14.TextSize = 14
title14.TextTransparency = 0.2
title14.AnchorPoint = Vector2.new(0.5, 0.5)
title14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title14.BackgroundTransparency = 1
title14.BorderSizePixel = 0
title14.Position = UDim2.fromScale(0.5, 0.5)
title14.Size = UDim2.new(0.8, 0, 0, 14)
title14.ZIndex = 5
title14.Parent = template2

local interact7 = Instance.new("TextButton")
interact7.Name = "Interact"
interact7.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
interact7.Text = ""
interact7.TextColor3 = Color3.fromRGB(0, 0, 0)
interact7.TextSize = 14
interact7.TextTransparency = 1
interact7.AnchorPoint = Vector2.new(0.5, 0.5)
interact7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
interact7.BackgroundTransparency = 1
interact7.BorderSizePixel = 0
interact7.Position = UDim2.fromScale(0.5, 0.5)
interact7.Size = UDim2.fromScale(1, 1)
interact7.ZIndex = 3
interact7.Parent = template2

local image1 = Instance.new("ImageLabel")
image1.Name = "Image"
image1.Image = "rbxassetid://4483362458"
image1.ImageColor3 = Color3.fromRGB(240, 240, 240)
image1.ScaleType = Enum.ScaleType.Fit
image1.AnchorPoint = Vector2.new(0, 0.5)
image1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
image1.BackgroundTransparency = 1
image1.BorderSizePixel = 0
image1.Position = UDim2.new(0, 11, 0.5, 0)
image1.Size = UDim2.fromOffset(20, 20)
image1.Visible = false
image1.ZIndex = 2
image1.Parent = template2

local shadow3 = Instance.new("ImageLabel")
shadow3.Name = "Shadow"
shadow3.Image = "rbxassetid://3602733521"
shadow3.ImageColor3 = Color3.fromRGB(20, 20, 20)
shadow3.ImageTransparency = 0.85
shadow3.AnchorPoint = Vector2.new(0.5, 0.5)
shadow3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
shadow3.BackgroundTransparency = 1
shadow3.BorderSizePixel = 0
shadow3.Position = UDim2.fromScale(0.5, 0.5)
shadow3.Size = UDim2.fromScale(1, 1)
shadow3.ZIndex = 3

local uICorner32 = Instance.new("UICorner")
uICorner32.Name = "UICorner"
uICorner32.CornerRadius = UDim.new(1, 0)
uICorner32.Parent = shadow3

shadow3.Parent = template2

template2.Parent = tabList

local placeholder2 = Instance.new("Frame")
placeholder2.Name = "Placeholder"
placeholder2.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
placeholder2.BackgroundTransparency = 1
placeholder2.BorderSizePixel = 0
placeholder2.LayoutOrder = -100
placeholder2.Position = UDim2.fromScale(0.174, 0)
placeholder2.Parent = tabList

local uIListLayout3 = Instance.new("UIListLayout")
uIListLayout3.Name = "UIListLayout"
uIListLayout3.Padding = UDim.new(0, 6)
uIListLayout3.FillDirection = Enum.FillDirection.Horizontal
uIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout3.VerticalAlignment = Enum.VerticalAlignment.Center
uIListLayout3.Parent = tabList

tabList.Parent = main

main.Parent = rayfield

local recommendSettings = Instance.new("Frame")
recommendSettings.Name = "RecommendSettings"
recommendSettings.AnchorPoint = Vector2.new(0.5, 0.5)
recommendSettings.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
recommendSettings.BackgroundTransparency = 0.1
recommendSettings.BorderSizePixel = 0
recommendSettings.Position = UDim2.fromScale(0.5, 0.339)
recommendSettings.Size = UDim2.fromOffset(474, 100)
recommendSettings.Visible = false
recommendSettings.ZIndex = 5

local shadow4 = Instance.new("Frame")
shadow4.Name = "Shadow"
shadow4.AnchorPoint = Vector2.new(0.5, 0.5)
shadow4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
shadow4.BackgroundTransparency = 1
shadow4.BorderSizePixel = 0
shadow4.Position = UDim2.fromScale(0.5, 0.5)
shadow4.Size = UDim2.new(1, 35, 1, 35)
shadow4.ZIndex = 4

local image2 = Instance.new("ImageLabel")
image2.Name = "Image"
image2.Image = "rbxassetid://5587865193"
image2.ImageColor3 = Color3.fromRGB(20, 20, 20)
image2.ImageTransparency = 0.2
image2.AnchorPoint = Vector2.new(0.5, 0.5)
image2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
image2.BackgroundTransparency = 1
image2.BorderSizePixel = 0
image2.Position = UDim2.fromScale(0.5, 0.5)
image2.Size = UDim2.fromScale(1.18, 1.3)
image2.ZIndex = 4
image2.Parent = shadow4

shadow4.Parent = recommendSettings

local uICorner33 = Instance.new("UICorner")
uICorner33.Name = "UICorner"
uICorner33.Parent = recommendSettings

local title15 = Instance.new("TextLabel")
title15.Name = "Title"
title15.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
title15.Text = "Recommended configuration available"
title15.TextColor3 = Color3.fromRGB(240, 240, 240)
title15.TextSize = 15
title15.TextWrapped = true
title15.TextXAlignment = Enum.TextXAlignment.Left
title15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title15.BackgroundTransparency = 1
title15.BorderSizePixel = 0
title15.Position = UDim2.fromScale(0.097, 0.25)
title15.Size = UDim2.fromOffset(363, 15)
title15.ZIndex = 5
title15.Parent = recommendSettings

local description = Instance.new("TextLabel")
description.Name = "Description"
description.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
description.Text = "The script developer has preset settings ready to use that they recommend for all users"
description.TextColor3 = Color3.fromRGB(210, 210, 210)
description.TextSize = 14
description.TextWrapped = true
description.TextXAlignment = Enum.TextXAlignment.Left
description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
description.BackgroundTransparency = 1
description.BorderSizePixel = 0
description.Position = UDim2.fromScale(0.042, 0.43)
description.Size = UDim2.fromOffset(316, 28)
description.ZIndex = 5
description.Parent = recommendSettings

local load = Instance.new("TextButton")
load.Name = "Load"
load.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
load.Text = "Load"
load.TextColor3 = Color3.fromRGB(240, 240, 240)
load.TextSize = 14
load.TextWrapped = true
load.BackgroundColor3 = Color3.fromRGB(0, 144, 216)
load.BackgroundTransparency = 0.2
load.BorderSizePixel = 0
load.Position = UDim2.fromScale(0.796, 0.566)
load.Size = UDim2.fromOffset(84, 33)
load.ZIndex = 5

local uICorner34 = Instance.new("UICorner")
uICorner34.Name = "UICorner"
uICorner34.CornerRadius = UDim.new(0, 6)
uICorner34.Parent = load

local uIStroke23 = Instance.new("UIStroke")
uIStroke23.Name = "UIStroke"
uIStroke23.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uIStroke23.Color = Color3.fromRGB(0, 151, 226)
uIStroke23.Thickness = 1.2
uIStroke23.Parent = load

local shadow5 = Instance.new("ImageLabel")
shadow5.Name = "Shadow"
shadow5.Image = "rbxassetid://3602733521"
shadow5.ImageColor3 = Color3.fromRGB(20, 20, 20)
shadow5.ImageTransparency = 0.8
shadow5.AnchorPoint = Vector2.new(0.5, 0.5)
shadow5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
shadow5.BackgroundTransparency = 1
shadow5.BorderSizePixel = 0
shadow5.Position = UDim2.fromScale(0.5, 0.5)
shadow5.Size = UDim2.new(1, 2, 1, 2)
shadow5.ZIndex = 5

local uICorner35 = Instance.new("UICorner")
uICorner35.Name = "UICorner"
uICorner35.CornerRadius = UDim.new(0, 6)
uICorner35.Parent = shadow5

shadow5.Parent = load

load.Parent = recommendSettings

local icon = Instance.new("ImageLabel")
icon.Name = "Icon"
icon.Image = "rbxassetid://4483362748"
icon.ImageColor3 = Color3.fromRGB(240, 240, 240)
icon.ScaleType = Enum.ScaleType.Fit
icon.BackgroundTransparency = 1
icon.BorderSizePixel = 0
icon.Position = UDim2.fromScale(0.042, 0.23)
icon.Size = UDim2.fromOffset(20, 20)
icon.ZIndex = 5
icon.Parent = recommendSettings

local uIStroke24 = Instance.new("UIStroke")
uIStroke24.Name = "UIStroke"
uIStroke24.Color = Color3.fromRGB(50, 50, 50)
uIStroke24.Parent = recommendSettings

local close = Instance.new("ImageButton")
close.Name = "Close"
close.Image = "http://www.roblox.com/asset/?id=10137832201"
close.ImageColor3 = Color3.fromRGB(240, 240, 240)
close.ImageTransparency = 0.8
close.ScaleType = Enum.ScaleType.Fit
close.AnchorPoint = Vector2.new(0.5, 0.5)
close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close.BackgroundTransparency = 1
close.BorderSizePixel = 0
close.Position = UDim2.fromScale(0.961, 0.2)
close.Size = UDim2.fromOffset(21, 21)
close.ZIndex = 5
close.Parent = recommendSettings

recommendSettings.Parent = rayfield

local notifications = Instance.new("Frame")
notifications.Name = "Notifications"
notifications.AnchorPoint = Vector2.new(1, 1)
notifications.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
notifications.BackgroundTransparency = 1
notifications.BorderSizePixel = 0
notifications.ClipsDescendants = true
notifications.Position = UDim2.new(1, -25, 1, -25)
notifications.Size = UDim2.fromOffset(296, 536)

local uIListLayout4 = Instance.new("UIListLayout")
uIListLayout4.Name = "UIListLayout"
uIListLayout4.Padding = UDim.new(0, 4)
uIListLayout4.HorizontalAlignment = Enum.HorizontalAlignment.Center
uIListLayout4.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout4.VerticalAlignment = Enum.VerticalAlignment.Bottom
uIListLayout4.Parent = notifications

local template3 = Instance.new("Frame")
template3.Name = "Template"
template3.AnchorPoint = Vector2.new(0.5, 0.5)
template3.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
template3.BackgroundTransparency = 0.4
template3.BorderSizePixel = 0
template3.Position = UDim2.fromScale(0.5, 0.87)
template3.Size = UDim2.fromOffset(295, 132)
template3.Visible = false
template3.ZIndex = 100

local uICorner36 = Instance.new("UICorner")
uICorner36.Name = "UICorner"
uICorner36.Parent = template3

local title16 = Instance.new("TextLabel")
title16.Name = "Title"
title16.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Bold,
  Enum.FontStyle.Normal
)
title16.Text = "Administrator"
title16.TextColor3 = Color3.fromRGB(240, 240, 240)
title16.TextScaled = true
title16.TextSize = 14
title16.TextWrapped = true
title16.TextXAlignment = Enum.TextXAlignment.Left
title16.AnchorPoint = Vector2.new(0.5, 0.5)
title16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title16.BackgroundTransparency = 1
title16.BorderSizePixel = 0
title16.Position = UDim2.fromOffset(159, 21)
title16.Size = UDim2.fromOffset(233, 15)
title16.ZIndex = 105
title16.Parent = template3

local description1 = Instance.new("TextLabel")
description1.Name = "Description"
description1.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Medium,
  Enum.FontStyle.Normal
)
description1.Text = "An administrator from this game (Frappe) has joined your session, would you like to disconnect?"
description1.TextColor3 = Color3.fromRGB(240, 240, 240)
description1.TextSize = 14
description1.TextTransparency = 0.2
description1.TextWrapped = true
description1.TextXAlignment = Enum.TextXAlignment.Left
description1.TextYAlignment = Enum.TextYAlignment.Top
description1.AnchorPoint = Vector2.new(0.5, 0.5)
description1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
description1.BackgroundTransparency = 1
description1.BorderSizePixel = 0
description1.Position = UDim2.fromOffset(149, 54)
description1.Size = UDim2.fromOffset(269, 43)
description1.ZIndex = 105
description1.Parent = template3

local icon1 = Instance.new("ImageButton")
icon1.Name = "Icon"
icon1.Image = "rbxassetid://3944680095"
icon1.ImageColor3 = Color3.fromRGB(240, 240, 240)
icon1.AnchorPoint = Vector2.new(0.5, 0.5)
icon1.BackgroundTransparency = 1
icon1.BorderSizePixel = 0
icon1.LayoutOrder = 5
icon1.Position = UDim2.fromOffset(25, 21)
icon1.Size = UDim2.fromOffset(20, 20)
icon1.ZIndex = 105
icon1.Parent = template3

local blurModule = Instance.new("Frame")
blurModule.Name = "BlurModule"
blurModule.AnchorPoint = Vector2.new(0.5, 0.5)
blurModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
blurModule.BackgroundTransparency = 1
blurModule.BorderSizePixel = 0
blurModule.Position = UDim2.fromScale(0.5, 0.5)
blurModule.Size = UDim2.new(1, -20, 1, -20)
blurModule.Parent = template3

local actions = Instance.new("ScrollingFrame")
actions.Name = "Actions"
actions.AutomaticCanvasSize = Enum.AutomaticSize.X
actions.CanvasSize = UDim2.new()
actions.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
actions.ScrollBarImageTransparency = 1
actions.ScrollBarThickness = 0
actions.ScrollingDirection = Enum.ScrollingDirection.X
actions.Active = true
actions.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
actions.BackgroundTransparency = 1
actions.BorderSizePixel = 0
actions.Position = UDim2.fromScale(0.054, 0.64)
actions.Size = UDim2.fromOffset(268, 36)
actions.ZIndex = 105

local template4 = Instance.new("TextButton")
template4.Name = "Template"
template4.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json")
template4.Text = "Ignore"
template4.TextColor3 = Color3.fromRGB(0, 0, 0)
template4.TextSize = 14
template4.TextWrapped = true
template4.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
template4.BackgroundTransparency = 0.2
template4.BorderColor3 = Color3.fromRGB(8, 12, 15)
template4.BorderSizePixel = 0
template4.Position = UDim2.fromScale(0, -0.143)
template4.Size = UDim2.new(0, 80, 1, 0)
template4.ZIndex = 106

local uICorner37 = Instance.new("UICorner")
uICorner37.Name = "UICorner"
uICorner37.CornerRadius = UDim.new(0, 6)
uICorner37.Parent = template4

template4.Parent = actions

local uIListLayout5 = Instance.new("UIListLayout")
uIListLayout5.Name = "UIListLayout"
uIListLayout5.Padding = UDim.new(0, 5)
uIListLayout5.FillDirection = Enum.FillDirection.Horizontal
uIListLayout5.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout5.Parent = actions

actions.Parent = template3

template3.Parent = notifications

notifications.Parent = rayfield
