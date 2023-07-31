local Release = "Beta 8"
local NotificationDuration = 6.5
local RayfieldFolder = "Rayfield"
local ConfigurationFolder = RayfieldFolder.."/Configurations"
local ConfigurationExtension = ".rfld"

local RayfieldLibrary = {
	Flags = {},
	Theme = {
		Default = {
			TextFont = "Default", -- Default will use the various font faces used across Rayfield
			TextColor = Color3.fromRGB(240, 240, 240),

			Background = Color3.fromRGB(25, 25, 25),
			Topbar = Color3.fromRGB(34, 34, 34),
			Shadow = Color3.fromRGB(20, 20, 20),

			NotificationBackground = Color3.fromRGB(20, 20, 20),
			NotificationActionsBackground = Color3.fromRGB(230, 230, 230),

			TabBackground = Color3.fromRGB(80, 80, 80),
			TabStroke = Color3.fromRGB(85, 85, 85),
			TabBackgroundSelected = Color3.fromRGB(210, 210, 210),
			TabTextColor = Color3.fromRGB(240, 240, 240),
			SelectedTabTextColor = Color3.fromRGB(50, 50, 50),

			ElementBackground = Color3.fromRGB(35, 35, 35),
			ElementBackgroundHover = Color3.fromRGB(40, 40, 40),
			SecondaryElementBackground = Color3.fromRGB(25, 25, 25), -- For labels and paragraphs
			ElementStroke = Color3.fromRGB(50, 50, 50),
			SecondaryElementStroke = Color3.fromRGB(40, 40, 40), -- For labels and paragraphs

			SliderBackground = Color3.fromRGB(43, 105, 159),
			SliderProgress = Color3.fromRGB(43, 105, 159),
			SliderStroke = Color3.fromRGB(48, 119, 177),

			ToggleBackground = Color3.fromRGB(30, 30, 30),
			ToggleEnabled = Color3.fromRGB(0, 146, 214),
			ToggleDisabled = Color3.fromRGB(100, 100, 100),
			ToggleEnabledStroke = Color3.fromRGB(0, 170, 255),
			ToggleDisabledStroke = Color3.fromRGB(125, 125, 125),
			ToggleEnabledOuterStroke = Color3.fromRGB(100, 100, 100),
			ToggleDisabledOuterStroke = Color3.fromRGB(65, 65, 65),

			InputBackground = Color3.fromRGB(30, 30, 30),
			InputStroke = Color3.fromRGB(65, 65, 65),
			PlaceholderColor = Color3.fromRGB(178, 178, 178)
		},
		Light = {
			TextFont = "Gotham", -- Default will use the various font faces used across Rayfield
			TextColor = Color3.fromRGB(50, 50, 50), -- i need to make all text 240, 240, 240 and base gray on transparency not color to do this

			Background = Color3.fromRGB(255, 255, 255),
			Topbar = Color3.fromRGB(217, 217, 217),
			Shadow = Color3.fromRGB(223, 223, 223),

			NotificationBackground = Color3.fromRGB(20, 20, 20),
			NotificationActionsBackground = Color3.fromRGB(230, 230, 230),

			TabBackground = Color3.fromRGB(220, 220, 220),
			TabStroke = Color3.fromRGB(112, 112, 112),
			TabBackgroundSelected = Color3.fromRGB(0, 142, 208),
			TabTextColor = Color3.fromRGB(240, 240, 240),
			SelectedTabTextColor = Color3.fromRGB(50, 50, 50),

			ElementBackground = Color3.fromRGB(198, 198, 198),
			ElementBackgroundHover = Color3.fromRGB(230, 230, 230),
			SecondaryElementBackground = Color3.fromRGB(136, 136, 136), -- For labels and paragraphs
			ElementStroke = Color3.fromRGB(180, 199, 97),
			SecondaryElementStroke = Color3.fromRGB(40, 40, 40), -- For labels and paragraphs

			SliderBackground = Color3.fromRGB(31, 159, 71),
			SliderProgress = Color3.fromRGB(31, 159, 71),
			SliderStroke = Color3.fromRGB(42, 216, 94),

			ToggleBackground = Color3.fromRGB(170, 203, 60),
			ToggleEnabled = Color3.fromRGB(32, 214, 29),
			ToggleDisabled = Color3.fromRGB(100, 22, 23),
			ToggleEnabledStroke = Color3.fromRGB(17, 255, 0),
			ToggleDisabledStroke = Color3.fromRGB(65, 8, 8),
			ToggleEnabledOuterStroke = Color3.fromRGB(0, 170, 0),
			ToggleDisabledOuterStroke = Color3.fromRGB(170, 0, 0),

			InputBackground = Color3.fromRGB(31, 159, 71),
			InputStroke = Color3.fromRGB(19, 65, 31),
			PlaceholderColor = Color3.fromRGB(178, 178, 178)
		}
	}
}



-- Services

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local CoreGui = game.Players.LocalPlayer.PlayerGui

-- Interface Management
local Rayfield = rayfield = Instance.new("ScreenGui")
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

Rayfield.Enabled = false

if gethui then
	Rayfield.Parent = gethui()
elseif syn.protect_gui then 
	syn.protect_gui(Rayfield)
	Rayfield.Parent = CoreGui
elseif CoreGui:FindFirstChild("RobloxGui") then
	Rayfield.Parent = CoreGui:FindFirstChild("RobloxGui")
else
	Rayfield.Parent = CoreGui
end

if gethui then
	for _, Interface in ipairs(gethui():GetChildren()) do
		if Interface.Name == Rayfield.Name and Interface ~= Rayfield then
			Interface.Enabled = false
			Interface.Name = "Rayfield-Old"
		end
	end
else
	for _, Interface in ipairs(CoreGui:GetChildren()) do
		if Interface.Name == Rayfield.Name and Interface ~= Rayfield then
			Interface.Enabled = false
			Interface.Name = "Rayfield-Old"
		end
	end
end

-- Object Variables

local Camera = workspace.CurrentCamera
local Main = Rayfield.Main
local Topbar = Main.Topbar
local Elements = Main.Elements
local LoadingFrame = Main.LoadingFrame
local TabList = Main.TabList

Rayfield.DisplayOrder = 100
LoadingFrame.Version.Text = Release


-- Variables

local request = (syn and syn.request) or (http and http.request) or http_request
local CFileName = nil
local CEnabled = false
local Minimised = false
local Hidden = false
local Debounce = false
local Notifications = Rayfield.Notifications

local SelectedTheme = RayfieldLibrary.Theme.Default

function ChangeTheme(ThemeName)
	SelectedTheme = RayfieldLibrary.Theme[ThemeName]
	for _, obj in ipairs(Rayfield:GetDescendants()) do
		if obj.ClassName == "TextLabel" or obj.ClassName == "TextBox" or obj.ClassName == "TextButton" then
			if SelectedTheme.TextFont ~= "Default" then 
				obj.TextColor3 = SelectedTheme.TextColor
				obj.Font = SelectedTheme.TextFont
			end
		end
	end

	Rayfield.Main.BackgroundColor3 = SelectedTheme.Background
	Rayfield.Main.Topbar.BackgroundColor3 = SelectedTheme.Topbar
	Rayfield.Main.Topbar.CornerRepair.BackgroundColor3 = SelectedTheme.Topbar
	Rayfield.Main.Shadow.Image.ImageColor3 = SelectedTheme.Shadow

	Rayfield.Main.Topbar.ChangeSize.ImageColor3 = SelectedTheme.TextColor
	Rayfield.Main.Topbar.Hide.ImageColor3 = SelectedTheme.TextColor
	Rayfield.Main.Topbar.Theme.ImageColor3 = SelectedTheme.TextColor

	for _, TabPage in ipairs(Elements:GetChildren()) do
		for _, Element in ipairs(TabPage:GetChildren()) do
			if Element.ClassName == "Frame" and Element.Name ~= "Placeholder" and Element.Name ~= "SectionSpacing" and Element.Name ~= "SectionTitle"  then
				Element.BackgroundColor3 = SelectedTheme.ElementBackground
				Element.UIStroke.Color = SelectedTheme.ElementStroke
			end
		end
	end

end

local function AddDraggingFunctionality(DragPoint, Main)
	pcall(function()
		local Dragging, DragInput, MousePos, FramePos = false
		DragPoint.InputBegan:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 then
				Dragging = true
				MousePos = Input.Position
				FramePos = Main.Position

				Input.Changed:Connect(function()
					if Input.UserInputState == Enum.UserInputState.End then
						Dragging = false
					end
				end)
			end
		end)
		DragPoint.InputChanged:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseMovement then
				DragInput = Input
			end
		end)
		UserInputService.InputChanged:Connect(function(Input)
			if Input == DragInput and Dragging then
				local Delta = Input.Position - MousePos
				TweenService:Create(Main, TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position  = UDim2.new(FramePos.X.Scale,FramePos.X.Offset + Delta.X, FramePos.Y.Scale, FramePos.Y.Offset + Delta.Y)}):Play()
			end
		end)
	end)
end   

local function PackColor(Color)
	return {R = Color.R * 255, G = Color.G * 255, B = Color.B * 255}
end    

local function UnpackColor(Color)
	return Color3.fromRGB(Color.R, Color.G, Color.B)
end

local function LoadConfiguration(Configuration)
	local Data = HttpService:JSONDecode(Configuration)
	for FlagName, FlagValue in next, Data do
		if RayfieldLibrary.Flags[FlagName] then
			spawn(function() 
				if RayfieldLibrary.Flags[FlagName].Type == "ColorPicker" then
					RayfieldLibrary.Flags[FlagName]:Set(UnpackColor(FlagValue))
				else
					if RayfieldLibrary.Flags[FlagName].CurrentValue or RayfieldLibrary.Flags[FlagName].CurrentKeybind or RayfieldLibrary.Flags[FlagName].CurrentOption or RayfieldLibrary.Flags[FlagName].Color ~= FlagValue then RayfieldLibrary.Flags[FlagName]:Set(FlagValue) end
				end    
			end)
		else
			RayfieldLibrary:Notify({Title = "Flag Error", Content = "Rayfield was unable to find '"..FlagName.. "'' in the current script"})
		end
	end
end

local function SaveConfiguration()
	if not CEnabled then return end
	local Data = {}
	for i,v in pairs(RayfieldLibrary.Flags) do
		if v.Type == "ColorPicker" then
			Data[i] = PackColor(v.Color)
		else
			Data[i] = v.CurrentValue or v.CurrentKeybind or v.CurrentOption or v.Color
		end
	end	
	writefile(ConfigurationFolder .. "/" .. CFileName .. ConfigurationExtension, tostring(HttpService:JSONEncode(Data)))
end

local neon = (function() -- Open sourced neon module
	local module = {}

	do
		local function IsNotNaN(x)
			return x == x
		end
		local continued = IsNotNaN(Camera:ScreenPointToRay(0,0).Origin.x)
		while not continued do
			RunService.RenderStepped:wait()
			continued = IsNotNaN(Camera:ScreenPointToRay(0,0).Origin.x)
		end
	end
	local RootParent = Camera
	if getgenv().SecureMode == nil then
		RootParent = Camera
	else
		if not getgenv().SecureMode then
			RootParent = Camera
		else 
			RootParent = nil
		end
	end


	local binds = {}
	local root = Instance.new('Folder', RootParent)
	root.Name = 'neon'


	local GenUid; do
		local id = 0
		function GenUid()
			id = id + 1
			return 'neon::'..tostring(id)
		end
	end

	local DrawQuad; do
		local acos, max, pi, sqrt = math.acos, math.max, math.pi, math.sqrt
		local sz = 0.2

		function DrawTriangle(v1, v2, v3, p0, p1)
			local s1 = (v1 - v2).magnitude
			local s2 = (v2 - v3).magnitude
			local s3 = (v3 - v1).magnitude
			local smax = max(s1, s2, s3)
			local A, B, C
			if s1 == smax then
				A, B, C = v1, v2, v3
			elseif s2 == smax then
				A, B, C = v2, v3, v1
			elseif s3 == smax then
				A, B, C = v3, v1, v2
			end

			local para = ( (B-A).x*(C-A).x + (B-A).y*(C-A).y + (B-A).z*(C-A).z ) / (A-B).magnitude
			local perp = sqrt((C-A).magnitude^2 - para*para)
			local dif_para = (A - B).magnitude - para

			local st = CFrame.new(B, A)
			local za = CFrame.Angles(pi/2,0,0)

			local cf0 = st

			local Top_Look = (cf0 * za).lookVector
			local Mid_Point = A + CFrame.new(A, B).LookVector * para
			local Needed_Look = CFrame.new(Mid_Point, C).LookVector
			local dot = Top_Look.x*Needed_Look.x + Top_Look.y*Needed_Look.y + Top_Look.z*Needed_Look.z

			local ac = CFrame.Angles(0, 0, acos(dot))

			cf0 = cf0 * ac
			if ((cf0 * za).lookVector - Needed_Look).magnitude > 0.01 then
				cf0 = cf0 * CFrame.Angles(0, 0, -2*acos(dot))
			end
			cf0 = cf0 * CFrame.new(0, perp/2, -(dif_para + para/2))

			local cf1 = st * ac * CFrame.Angles(0, pi, 0)
			if ((cf1 * za).lookVector - Needed_Look).magnitude > 0.01 then
				cf1 = cf1 * CFrame.Angles(0, 0, 2*acos(dot))
			end
			cf1 = cf1 * CFrame.new(0, perp/2, dif_para/2)

			if not p0 then
				p0 = Instance.new('Part')
				p0.FormFactor = 'Custom'
				p0.TopSurface = 0
				p0.BottomSurface = 0
				p0.Anchored = true
				p0.CanCollide = false
				p0.Material = 'Glass'
				p0.Size = Vector3.new(sz, sz, sz)
				local mesh = Instance.new('SpecialMesh', p0)
				mesh.MeshType = 2
				mesh.Name = 'WedgeMesh'
			end
			p0.WedgeMesh.Scale = Vector3.new(0, perp/sz, para/sz)
			p0.CFrame = cf0

			if not p1 then
				p1 = p0:clone()
			end
			p1.WedgeMesh.Scale = Vector3.new(0, perp/sz, dif_para/sz)
			p1.CFrame = cf1

			return p0, p1
		end

		function DrawQuad(v1, v2, v3, v4, parts)
			parts[1], parts[2] = DrawTriangle(v1, v2, v3, parts[1], parts[2])
			parts[3], parts[4] = DrawTriangle(v3, v2, v4, parts[3], parts[4])
		end
	end

	function module:BindFrame(frame, properties)
		if RootParent == nil then return end
		if binds[frame] then
			return binds[frame].parts
		end

		local uid = GenUid()
		local parts = {}
		local f = Instance.new('Folder', root)
		f.Name = frame.Name

		local parents = {}
		do
			local function add(child)
				if child:IsA'GuiObject' then
					parents[#parents + 1] = child
					add(child.Parent)
				end
			end
			add(frame)
		end

		local function UpdateOrientation(fetchProps)
			local zIndex = 1 - 0.05*frame.ZIndex
			local tl, br = frame.AbsolutePosition, frame.AbsolutePosition + frame.AbsoluteSize
			local tr, bl = Vector2.new(br.x, tl.y), Vector2.new(tl.x, br.y)
			do
				local rot = 0;
				for _, v in ipairs(parents) do
					rot = rot + v.Rotation
				end
				if rot ~= 0 and rot%180 ~= 0 then
					local mid = tl:lerp(br, 0.5)
					local s, c = math.sin(math.rad(rot)), math.cos(math.rad(rot))
					local vec = tl
					tl = Vector2.new(c*(tl.x - mid.x) - s*(tl.y - mid.y), s*(tl.x - mid.x) + c*(tl.y - mid.y)) + mid
					tr = Vector2.new(c*(tr.x - mid.x) - s*(tr.y - mid.y), s*(tr.x - mid.x) + c*(tr.y - mid.y)) + mid
					bl = Vector2.new(c*(bl.x - mid.x) - s*(bl.y - mid.y), s*(bl.x - mid.x) + c*(bl.y - mid.y)) + mid
					br = Vector2.new(c*(br.x - mid.x) - s*(br.y - mid.y), s*(br.x - mid.x) + c*(br.y - mid.y)) + mid
				end
			end
			DrawQuad(
				Camera:ScreenPointToRay(tl.x, tl.y, zIndex).Origin, 
				Camera:ScreenPointToRay(tr.x, tr.y, zIndex).Origin, 
				Camera:ScreenPointToRay(bl.x, bl.y, zIndex).Origin, 
				Camera:ScreenPointToRay(br.x, br.y, zIndex).Origin, 
				parts
			)
			if fetchProps then
				for _, pt in pairs(parts) do
					pt.Parent = f
				end
				for propName, propValue in pairs(properties) do
					for _, pt in pairs(parts) do
						pt[propName] = propValue
					end
				end
			end
		end

		UpdateOrientation(true)
		RunService:BindToRenderStep(uid, 2000, UpdateOrientation)

		binds[frame] = {
			uid = uid;
			parts = parts;
		}
		return binds[frame].parts
	end

	function module:Modify(frame, properties)
		local parts = module:GetBoundParts(frame)
		if parts then
			for propName, propValue in pairs(properties) do
				for _, pt in pairs(parts) do
					pt[propName] = propValue
				end
			end
		end
	end

	function module:UnbindFrame(frame)
		if RootParent == nil then return end
		local cb = binds[frame]
		if cb then
			RunService:UnbindFromRenderStep(cb.uid)
			for _, v in pairs(cb.parts) do
				v:Destroy()
			end
			binds[frame] = nil
		end
	end

	function module:HasBinding(frame)
		return binds[frame] ~= nil
	end

	function module:GetBoundParts(frame)
		return binds[frame] and binds[frame].parts
	end


	return module

end)()

function RayfieldLibrary:Notify(NotificationSettings)
	spawn(function()
		local ActionCompleted = true
		local Notification = Notifications.Template:Clone()
		Notification.Parent = Notifications
		Notification.Name = NotificationSettings.Title or "Unknown Title"
		Notification.Visible = true

		local blurlight = nil
		if not getgenv().SecureMode then
			blurlight = Instance.new("DepthOfFieldEffect",game:GetService("Lighting"))
			blurlight.Enabled = true
			blurlight.FarIntensity = 0
			blurlight.FocusDistance = 51.6
			blurlight.InFocusRadius = 50
			blurlight.NearIntensity = 1
			game:GetService("Debris"):AddItem(script,0)
		end

		Notification.Actions.Template.Visible = false

		if NotificationSettings.Actions then
			for _, Action in pairs(NotificationSettings.Actions) do
				ActionCompleted = false
				local NewAction = Notification.Actions.Template:Clone()
				NewAction.BackgroundColor3 = SelectedTheme.NotificationActionsBackground
				if SelectedTheme ~= RayfieldLibrary.Theme.Default then
					NewAction.TextColor3 = SelectedTheme.TextColor
				end
				NewAction.Name = Action.Name
				NewAction.Visible = true
				NewAction.Parent = Notification.Actions
				NewAction.Text = Action.Name
				NewAction.BackgroundTransparency = 1
				NewAction.TextTransparency = 1
				NewAction.Size = UDim2.new(0, NewAction.TextBounds.X + 27, 0, 36)

				NewAction.MouseButton1Click:Connect(function()
					local Success, Response = pcall(Action.Callback)
					if not Success then
						print("Rayfield | Action: "..Action.Name.." Callback Error " ..tostring(Response))
					end
					ActionCompleted = true
				end)
			end
		end
		Notification.BackgroundColor3 = SelectedTheme.Background
		Notification.Title.Text = NotificationSettings.Title or "Unknown"
		Notification.Title.TextTransparency = 1
		Notification.Title.TextColor3 = SelectedTheme.TextColor
		Notification.Description.Text = NotificationSettings.Content or "Unknown"
		Notification.Description.TextTransparency = 1
		Notification.Description.TextColor3 = SelectedTheme.TextColor
		Notification.Icon.ImageColor3 = SelectedTheme.TextColor
		if NotificationSettings.Image then
			Notification.Icon.Image = "rbxassetid://"..tostring(NotificationSettings.Image) 
		else
			Notification.Icon.Image = "rbxassetid://3944680095"
		end

		Notification.Icon.ImageTransparency = 1

		Notification.Parent = Notifications
		Notification.Size = UDim2.new(0, 260, 0, 80)
		Notification.BackgroundTransparency = 1

		TweenService:Create(Notification, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 295, 0, 91)}):Play()
		TweenService:Create(Notification, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.1}):Play()
		Notification:TweenPosition(UDim2.new(0.5,0,0.915,0),'Out','Quint',0.8,true)

		wait(0.3)
		TweenService:Create(Notification.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
		TweenService:Create(Notification.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
		TweenService:Create(Notification.Description, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.2}):Play()
		wait(0.2)



		-- Requires Graphics Level 8-10
		if getgenv().SecureMode == nil then
			TweenService:Create(Notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.4}):Play()
		else
			if not getgenv().SecureMode then
				TweenService:Create(Notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.4}):Play()
			else 
				TweenService:Create(Notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
			end
		end

		if Rayfield.Name == "Rayfield" then
			neon:BindFrame(Notification.BlurModule, {
				Transparency = 0.98;
				BrickColor = BrickColor.new("Institutional white");
			})
		end

		if not NotificationSettings.Actions then
			wait(NotificationSettings.Duration or NotificationDuration - 0.5)
		else
			wait(0.8)
			TweenService:Create(Notification, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 295, 0, 132)}):Play()
			wait(0.3)
			for _, Action in ipairs(Notification.Actions:GetChildren()) do
				if Action.ClassName == "TextButton" and Action.Name ~= "Template" then
					TweenService:Create(Action, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.2}):Play()
					TweenService:Create(Action, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
					wait(0.05)
				end
			end
		end

		repeat wait(0.001) until ActionCompleted

		for _, Action in ipairs(Notification.Actions:GetChildren()) do
			if Action.ClassName == "TextButton" and Action.Name ~= "Template" then
				TweenService:Create(Action, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
				TweenService:Create(Action, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
			end
		end

		TweenService:Create(Notification.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Position = UDim2.new(0.47, 0,0.234, 0)}):Play()
		TweenService:Create(Notification.Description, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Position = UDim2.new(0.528, 0,0.637, 0)}):Play()
		TweenService:Create(Notification, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 280, 0, 83)}):Play()
		TweenService:Create(Notification.Icon, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
		TweenService:Create(Notification, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.6}):Play()

		wait(0.3)
		TweenService:Create(Notification.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.4}):Play()
		TweenService:Create(Notification.Description, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.5}):Play()
		wait(0.4)
		TweenService:Create(Notification, TweenInfo.new(0.9, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 260, 0, 0)}):Play()
		TweenService:Create(Notification, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
		TweenService:Create(Notification.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		TweenService:Create(Notification.Description, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		wait(0.2)
		if not getgenv().SecureMode then
			neon:UnbindFrame(Notification.BlurModule)
			blurlight:Destroy()
		end
		wait(0.9)
		Notification:Destroy()
	end)
end

function Hide()
	Debounce = true
	RayfieldLibrary:Notify({Title = "Interface Hidden", Content = "The interface has been hidden, you can unhide the interface by tapping RightShift", Duration = 7})
	TweenService:Create(Main, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 470, 0, 400)}):Play()
	TweenService:Create(Main.Topbar, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 470, 0, 45)}):Play()
	TweenService:Create(Main, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
	TweenService:Create(Main.Topbar, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
	TweenService:Create(Main.Topbar.Divider, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
	TweenService:Create(Main.Topbar.CornerRepair, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
	TweenService:Create(Main.Topbar.Title, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
	TweenService:Create(Main.Shadow.Image, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
	TweenService:Create(Topbar.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
	for _, TopbarButton in ipairs(Topbar:GetChildren()) do
		if TopbarButton.ClassName == "ImageButton" then
			TweenService:Create(TopbarButton, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
		end
	end
	for _, tabbtn in ipairs(TabList:GetChildren()) do
		if tabbtn.ClassName == "Frame" and tabbtn.Name ~= "Placeholder" then
			TweenService:Create(tabbtn, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
			TweenService:Create(tabbtn.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
			TweenService:Create(tabbtn.Image, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
			TweenService:Create(tabbtn.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
			TweenService:Create(tabbtn.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
		end
	end
	for _, tab in ipairs(Elements:GetChildren()) do
		if tab.Name ~= "Template" and tab.ClassName == "ScrollingFrame" and tab.Name ~= "Placeholder" then
			for _, element in ipairs(tab:GetChildren()) do
				if element.ClassName == "Frame" then
					if element.Name ~= "SectionSpacing" and element.Name ~= "Placeholder" then
						if element.Name == "SectionTitle" then
							TweenService:Create(element.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
						else
							TweenService:Create(element, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
							TweenService:Create(element.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
							TweenService:Create(element.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
						end
						for _, child in ipairs(element:GetChildren()) do
							if child.ClassName == "Frame" or child.ClassName == "TextLabel" or child.ClassName == "TextBox" or child.ClassName == "ImageButton" or child.ClassName == "ImageLabel" then
								child.Visible = false
							end
						end
					end
				end
			end
		end
	end
	wait(0.5)
	Main.Visible = false
	Debounce = false
end

function Unhide()
	Debounce = true
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Visible = true
	TweenService:Create(Main, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 500, 0, 475)}):Play()
	TweenService:Create(Main.Topbar, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 500, 0, 45)}):Play()
	TweenService:Create(Main.Shadow.Image, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0.4}):Play()
	TweenService:Create(Main, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
	TweenService:Create(Main.Topbar, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
	TweenService:Create(Main.Topbar.Divider, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
	TweenService:Create(Main.Topbar.CornerRepair, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
	TweenService:Create(Main.Topbar.Title, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
	if Minimised then
		spawn(Maximise)
	end
	for _, TopbarButton in ipairs(Topbar:GetChildren()) do
		if TopbarButton.ClassName == "ImageButton" then
			TweenService:Create(TopbarButton, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0.8}):Play()
		end
	end
	for _, tabbtn in ipairs(TabList:GetChildren()) do
		if tabbtn.ClassName == "Frame" and tabbtn.Name ~= "Placeholder" then
			if tostring(Elements.UIPageLayout.CurrentPage) == tabbtn.Title.Text then
				TweenService:Create(tabbtn, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
				TweenService:Create(tabbtn.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
				TweenService:Create(tabbtn.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0.9}):Play()
				TweenService:Create(tabbtn.Image, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
				TweenService:Create(tabbtn.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
			else
				TweenService:Create(tabbtn, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.7}):Play()
				TweenService:Create(tabbtn.Image, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0.2}):Play()
				TweenService:Create(tabbtn.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0.7}):Play()
				TweenService:Create(tabbtn.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 0.2}):Play()
				TweenService:Create(tabbtn.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
			end

		end
	end
	for _, tab in ipairs(Elements:GetChildren()) do
		if tab.Name ~= "Template" and tab.ClassName == "ScrollingFrame" and tab.Name ~= "Placeholder" then
			for _, element in ipairs(tab:GetChildren()) do
				if element.ClassName == "Frame" then
					if element.Name ~= "SectionSpacing" and element.Name ~= "Placeholder" then
						if element.Name == "SectionTitle" then
							TweenService:Create(element.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
						else
							TweenService:Create(element, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
							TweenService:Create(element.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
							TweenService:Create(element.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
						end
						for _, child in ipairs(element:GetChildren()) do
							if child.ClassName == "Frame" or child.ClassName == "TextLabel" or child.ClassName == "TextBox" or child.ClassName == "ImageButton" or child.ClassName == "ImageLabel" then
								child.Visible = true
							end
						end
					end
				end
			end
		end
	end
	wait(0.5)
	Minimised = false
	Debounce = false
end

function Maximise()
	Debounce = true
	Topbar.ChangeSize.Image = "rbxassetid://"..10137941941


	TweenService:Create(Topbar.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
	TweenService:Create(Main.Shadow.Image, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 0.4}):Play()
	TweenService:Create(Topbar.CornerRepair, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
	TweenService:Create(Topbar.Divider, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
	TweenService:Create(Main, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 500, 0, 475)}):Play()
	TweenService:Create(Topbar, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 500, 0, 45)}):Play()
	TabList.Visible = true
	wait(0.2)

	Elements.Visible = true

	for _, tab in ipairs(Elements:GetChildren()) do
		if tab.Name ~= "Template" and tab.ClassName == "ScrollingFrame" and tab.Name ~= "Placeholder" then
			for _, element in ipairs(tab:GetChildren()) do
				if element.ClassName == "Frame" then
					if element.Name ~= "SectionSpacing" and element.Name ~= "Placeholder" then
						if element.Name == "SectionTitle" then
							TweenService:Create(element.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
						else
							TweenService:Create(element, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
							TweenService:Create(element.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
							TweenService:Create(element.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
						end
						for _, child in ipairs(element:GetChildren()) do
							if child.ClassName == "Frame" or child.ClassName == "TextLabel" or child.ClassName == "TextBox" or child.ClassName == "ImageButton" or child.ClassName == "ImageLabel" then
								child.Visible = true
							end
						end
					end
				end
			end
		end
	end


	wait(0.1)

	for _, tabbtn in ipairs(TabList:GetChildren()) do
		if tabbtn.ClassName == "Frame" and tabbtn.Name ~= "Placeholder" then
			if tostring(Elements.UIPageLayout.CurrentPage) == tabbtn.Title.Text then
				TweenService:Create(tabbtn, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
				TweenService:Create(tabbtn.Image, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
				TweenService:Create(tabbtn.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
				TweenService:Create(tabbtn.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
				TweenService:Create(tabbtn.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0.9}):Play()
			else
				TweenService:Create(tabbtn, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.7}):Play()
				TweenService:Create(tabbtn.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0.7}):Play()
				TweenService:Create(tabbtn.Image, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0.2}):Play()
				TweenService:Create(tabbtn.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 0.2}):Play()
				TweenService:Create(tabbtn.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
			end

		end
	end


	wait(0.5)
	Debounce = false
end

function Minimise()
	Debounce = true
	Topbar.ChangeSize.Image = "rbxassetid://"..11036884234

	for _, tabbtn in ipairs(TabList:GetChildren()) do
		if tabbtn.ClassName == "Frame" and tabbtn.Name ~= "Placeholder" then
			TweenService:Create(tabbtn, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
			TweenService:Create(tabbtn.Image, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
			TweenService:Create(tabbtn.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
			TweenService:Create(tabbtn.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
			TweenService:Create(tabbtn.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
		end
	end

	for _, tab in ipairs(Elements:GetChildren()) do
		if tab.Name ~= "Template" and tab.ClassName == "ScrollingFrame" and tab.Name ~= "Placeholder" then
			for _, element in ipairs(tab:GetChildren()) do
				if element.ClassName == "Frame" then
					if element.Name ~= "SectionSpacing" and element.Name ~= "Placeholder" then
						if element.Name == "SectionTitle" then
							TweenService:Create(element.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
						else
							TweenService:Create(element, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
							TweenService:Create(element.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
							TweenService:Create(element.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
						end
						for _, child in ipairs(element:GetChildren()) do
							if child.ClassName == "Frame" or child.ClassName == "TextLabel" or child.ClassName == "TextBox" or child.ClassName == "ImageButton" or child.ClassName == "ImageLabel" then
								child.Visible = false
							end
						end
					end
				end
			end
		end
	end

	TweenService:Create(Topbar.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
	TweenService:Create(Main.Shadow.Image, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
	TweenService:Create(Topbar.CornerRepair, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
	TweenService:Create(Topbar.Divider, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
	TweenService:Create(Main, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 495, 0, 45)}):Play()
	TweenService:Create(Topbar, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 495, 0, 45)}):Play()

	wait(0.3)

	Elements.Visible = false
	TabList.Visible = false

	wait(0.2)
	Debounce = false
end

function RayfieldLibrary:CreateWindow(Settings)
	local Passthrough = false
	Topbar.Title.Text = Settings.Name
	Main.Size = UDim2.new(0, 450, 0, 260)
	Main.Visible = true
	Main.BackgroundTransparency = 1
	LoadingFrame.Title.TextTransparency = 1
	LoadingFrame.Subtitle.TextTransparency = 1
	Main.Shadow.Image.ImageTransparency = 1
	LoadingFrame.Version.TextTransparency = 1
	LoadingFrame.Title.Text = Settings.LoadingTitle or "Rayfield Interface Suite"
	LoadingFrame.Subtitle.Text = Settings.LoadingSubtitle or "by Sirius"
	if Settings.LoadingTitle ~= "Rayfield Interface Suite" then
		LoadingFrame.Version.Text = "Rayfield UI"
	end
	Topbar.Visible = false
	Elements.Visible = false
	LoadingFrame.Visible = true


	pcall(function()
		if not Settings.ConfigurationSaving.FileName then
			Settings.ConfigurationSaving.FileName = tostring(game.PlaceId)
		end
		if not isfolder(RayfieldFolder.."/".."Configuration Folders") then

		end
		if Settings.ConfigurationSaving.Enabled == nil then
			Settings.ConfigurationSaving.Enabled = false
		end
		CFileName = Settings.ConfigurationSaving.FileName
		ConfigurationFolder = Settings.ConfigurationSaving.FolderName or ConfigurationFolder
		CEnabled = Settings.ConfigurationSaving.Enabled

		if Settings.ConfigurationSaving.Enabled then
			if not isfolder(ConfigurationFolder) then
				makefolder(ConfigurationFolder)
			end	
		end
	end)

	AddDraggingFunctionality(Topbar,Main)

	for _, TabButton in ipairs(TabList:GetChildren()) do
		if TabButton.ClassName == "Frame" and TabButton.Name ~= "Placeholder" then
			TabButton.BackgroundTransparency = 1
			TabButton.Title.TextTransparency = 1
			TabButton.Shadow.ImageTransparency = 1
			TabButton.Image.ImageTransparency = 1
			TabButton.UIStroke.Transparency = 1
		end
	end

	if Settings.Discord then
		if not isfolder(RayfieldFolder.."/Discord Invites") then
			makefolder(RayfieldFolder.."/Discord Invites")
		end
		if not isfile(RayfieldFolder.."/Discord Invites".."/"..Settings.Discord.Invite..ConfigurationExtension) then
			if request then
				request({
					Url = 'http://127.0.0.1:6463/rpc?v=1',
					Method = 'POST',
					Headers = {
						['Content-Type'] = 'application/json',
						Origin = 'https://discord.com'
					},
					Body = HttpService:JSONEncode({
						cmd = 'INVITE_BROWSER',
						nonce = HttpService:GenerateGUID(false),
						args = {code = Settings.Discord.Invite}
					})
				})
			end

			if Settings.Discord.RememberJoins then -- We do logic this way so if the developer changes this setting, the user still won't be prompted, only new users
				writefile(RayfieldFolder.."/Discord Invites".."/"..Settings.Discord.Invite..ConfigurationExtension,"Rayfield RememberJoins is true for this invite, this invite will not ask you to join again")
			end
		else

		end
	end

	if Settings.KeySystem then
		if not Settings.KeySettings then
			Passthrough = true
			return
		end

		if not isfolder(RayfieldFolder.."/Key System") then
			makefolder(RayfieldFolder.."/Key System")
		end

		if typeof(Settings.KeySettings.Key) == "string" then Settings.KeySettings.Key = {Settings.KeySettings.Key} end

		if Settings.KeySettings.GrabKeyFromSite then
			for i, Key in ipairs(Settings.KeySettings.Key) do
				local Success, Response = pcall(function()
					Settings.KeySettings.Key[i] = tostring(game:HttpGet(Key):gsub("[\n\r]", " "))
					Settings.KeySettings.Key[i] = string.gsub(Settings.KeySettings.Key[i], " ", "")
				end)
				if not Success then
					print("Rayfield | "..Key.." Error " ..tostring(Response))
				end
			end
		end

		if not Settings.KeySettings.FileName then
			Settings.KeySettings.FileName = "No file name specified"
		end

		if isfile(RayfieldFolder.."/Key System".."/"..Settings.KeySettings.FileName..ConfigurationExtension) then
			for _, MKey in ipairs(Settings.KeySettings.Key) do
				if string.find(readfile(RayfieldFolder.."/Key System".."/"..Settings.KeySettings.FileName..ConfigurationExtension), MKey) then
					Passthrough = true
				end
			end
		end

		if not Passthrough then
			local AttemptsRemaining = math.random(2,6)
			Rayfield.Enabled = false
			local KeyUI = key = Instance.new("ScreenGui")
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

			if gethui then
				KeyUI.Parent = gethui()
			elseif syn.protect_gui then
				syn.protect_gui(Rayfield)
				KeyUI.Parent = CoreGui
			else
				KeyUI.Parent = CoreGui
			end

			if gethui then
				for _, Interface in ipairs(gethui():GetChildren()) do
					if Interface.Name == KeyUI.Name and Interface ~= KeyUI then
						Interface.Enabled = false
						Interface.Name = "KeyUI-Old"
					end
				end
			else
				for _, Interface in ipairs(CoreGui:GetChildren()) do
					if Interface.Name == KeyUI.Name and Interface ~= KeyUI then
						Interface.Enabled = false
						Interface.Name = "KeyUI-Old"
					end
				end
			end

			local KeyMain = KeyUI.Main
			KeyMain.Title.Text = Settings.KeySettings.Title or Settings.Name
			KeyMain.Subtitle.Text = Settings.KeySettings.Subtitle or "Key System"
			KeyMain.NoteMessage.Text = Settings.KeySettings.Note or "No instructions"

			KeyMain.Size = UDim2.new(0, 467, 0, 175)
			KeyMain.BackgroundTransparency = 1
			KeyMain.Shadow.Image.ImageTransparency = 1
			KeyMain.Title.TextTransparency = 1
			KeyMain.Subtitle.TextTransparency = 1
			KeyMain.KeyNote.TextTransparency = 1
			KeyMain.Input.BackgroundTransparency = 1
			KeyMain.Input.UIStroke.Transparency = 1
			KeyMain.Input.InputBox.TextTransparency = 1
			KeyMain.NoteTitle.TextTransparency = 1
			KeyMain.NoteMessage.TextTransparency = 1
			KeyMain.Hide.ImageTransparency = 1

			TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
			TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 500, 0, 187)}):Play()
			TweenService:Create(KeyMain.Shadow.Image, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 0.5}):Play()
			wait(0.05)
			TweenService:Create(KeyMain.Title, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
			TweenService:Create(KeyMain.Subtitle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
			wait(0.05)
			TweenService:Create(KeyMain.KeyNote, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
			TweenService:Create(KeyMain.Input, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
			TweenService:Create(KeyMain.Input.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
			TweenService:Create(KeyMain.Input.InputBox, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
			wait(0.05)
			TweenService:Create(KeyMain.NoteTitle, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
			TweenService:Create(KeyMain.NoteMessage, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
			wait(0.15)
			TweenService:Create(KeyMain.Hide, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {ImageTransparency = 0.3}):Play()


			KeyUI.Main.Input.InputBox.FocusLost:Connect(function()
				if #KeyUI.Main.Input.InputBox.Text == 0 then return end
				local KeyFound = false
				local FoundKey = ''
				for _, MKey in ipairs(Settings.KeySettings.Key) do
					if string.find(KeyMain.Input.InputBox.Text, MKey) then
						KeyFound = true
						FoundKey = MKey
					end
				end
				if KeyFound then 
					TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
					TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 467, 0, 175)}):Play()
					TweenService:Create(KeyMain.Shadow.Image, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
					TweenService:Create(KeyMain.Title, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
					TweenService:Create(KeyMain.Subtitle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
					TweenService:Create(KeyMain.KeyNote, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
					TweenService:Create(KeyMain.Input, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
					TweenService:Create(KeyMain.Input.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
					TweenService:Create(KeyMain.Input.InputBox, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
					TweenService:Create(KeyMain.NoteTitle, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
					TweenService:Create(KeyMain.NoteMessage, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
					TweenService:Create(KeyMain.Hide, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
					wait(0.51)
					Passthrough = true
					if Settings.KeySettings.SaveKey then
						if writefile then
							writefile(RayfieldFolder.."/Key System".."/"..Settings.KeySettings.FileName..ConfigurationExtension, FoundKey)
						end
						RayfieldLibrary:Notify({Title = "Key System", Content = "The key for this script has been saved successfully"})
					end
				else
					if AttemptsRemaining == 0 then
						TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
						TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 467, 0, 175)}):Play()
						TweenService:Create(KeyMain.Shadow.Image, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
						TweenService:Create(KeyMain.Title, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
						TweenService:Create(KeyMain.Subtitle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
						TweenService:Create(KeyMain.KeyNote, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
						TweenService:Create(KeyMain.Input, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
						TweenService:Create(KeyMain.Input.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
						TweenService:Create(KeyMain.Input.InputBox, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
						TweenService:Create(KeyMain.NoteTitle, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
						TweenService:Create(KeyMain.NoteMessage, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
						TweenService:Create(KeyMain.Hide, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
						wait(0.45)
						game.Players.LocalPlayer:Kick("No Attempts Remaining")
						game:Shutdown()
					end
					KeyMain.Input.InputBox.Text = ""
					AttemptsRemaining = AttemptsRemaining - 1
					TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 467, 0, 175)}):Play()
					TweenService:Create(KeyMain, TweenInfo.new(0.4, Enum.EasingStyle.Elastic), {Position = UDim2.new(0.495,0,0.5,0)}):Play()
					wait(0.1)
					TweenService:Create(KeyMain, TweenInfo.new(0.4, Enum.EasingStyle.Elastic), {Position = UDim2.new(0.505,0,0.5,0)}):Play()
					wait(0.1)
					TweenService:Create(KeyMain, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {Position = UDim2.new(0.5,0,0.5,0)}):Play()
					TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 500, 0, 187)}):Play()
				end
			end)

			KeyMain.Hide.MouseButton1Click:Connect(function()
				TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
				TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 467, 0, 175)}):Play()
				TweenService:Create(KeyMain.Shadow.Image, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
				TweenService:Create(KeyMain.Title, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
				TweenService:Create(KeyMain.Subtitle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
				TweenService:Create(KeyMain.KeyNote, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
				TweenService:Create(KeyMain.Input, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
				TweenService:Create(KeyMain.Input.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
				TweenService:Create(KeyMain.Input.InputBox, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
				TweenService:Create(KeyMain.NoteTitle, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
				TweenService:Create(KeyMain.NoteMessage, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
				TweenService:Create(KeyMain.Hide, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
				wait(0.51)
				RayfieldLibrary:Destroy()
				KeyUI:Destroy()
			end)
		else
			Passthrough = true
		end
	end
	if Settings.KeySystem then
		repeat wait() until Passthrough
	end

	Notifications.Template.Visible = false
	Notifications.Visible = true
	Rayfield.Enabled = true
	wait(0.5)
	TweenService:Create(Main, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
	TweenService:Create(Main.Shadow.Image, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0.55}):Play()
	wait(0.1)
	TweenService:Create(LoadingFrame.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
	wait(0.05)
	TweenService:Create(LoadingFrame.Subtitle, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
	wait(0.05)
	TweenService:Create(LoadingFrame.Version, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()

	Elements.Template.LayoutOrder = 100000
	Elements.Template.Visible = false

	Elements.UIPageLayout.FillDirection = Enum.FillDirection.Horizontal
	TabList.Template.Visible = false

	-- Tab
	local FirstTab = false
	local Window = {}
	function Window:CreateTab(Name,Image)
		local SDone = false
		local TabButton = TabList.Template:Clone()
		TabButton.Name = Name
		TabButton.Title.Text = Name
		TabButton.Parent = TabList
		TabButton.Title.TextWrapped = false
		TabButton.Size = UDim2.new(0, TabButton.Title.TextBounds.X + 30, 0, 30)

		if Image then
			TabButton.Title.AnchorPoint = Vector2.new(0, 0.5)
			TabButton.Title.Position = UDim2.new(0, 37, 0.5, 0)
			TabButton.Image.Image = "rbxassetid://"..Image
			TabButton.Image.Visible = true
			TabButton.Title.TextXAlignment = Enum.TextXAlignment.Left
			TabButton.Size = UDim2.new(0, TabButton.Title.TextBounds.X + 46, 0, 30)
		end

		TabButton.BackgroundTransparency = 1
		TabButton.Title.TextTransparency = 1
		TabButton.Shadow.ImageTransparency = 1
		TabButton.Image.ImageTransparency = 1
		TabButton.UIStroke.Transparency = 1

		TabButton.Visible = true

		-- Create Elements Page
		local TabPage = Elements.Template:Clone()
		TabPage.Name = Name
		TabPage.Visible = true

		TabPage.LayoutOrder = #Elements:GetChildren()

		for _, TemplateElement in ipairs(TabPage:GetChildren()) do
			if TemplateElement.ClassName == "Frame" and TemplateElement.Name ~= "Placeholder" then
				TemplateElement:Destroy()
			end
		end

		TabPage.Parent = Elements
		if not FirstTab then
			Elements.UIPageLayout.Animated = false
			Elements.UIPageLayout:JumpTo(TabPage)
			Elements.UIPageLayout.Animated = true
		end

		if SelectedTheme ~= RayfieldLibrary.Theme.Default then
			TabButton.Shadow.Visible = false
		end
		TabButton.UIStroke.Color = SelectedTheme.TabStroke
		-- Animate
		wait(0.1)
		if FirstTab then
			TabButton.BackgroundColor3 = SelectedTheme.TabBackground
			TabButton.Image.ImageColor3 = SelectedTheme.TabTextColor
			TabButton.Title.TextColor3 = SelectedTheme.TabTextColor
			TweenService:Create(TabButton, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.7}):Play()
			TweenService:Create(TabButton.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0.2}):Play()
			TweenService:Create(TabButton.Image, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0.2}):Play()
			TweenService:Create(TabButton.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Transparency = 0}):Play()

			TweenService:Create(TabButton.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0.7}):Play()
		else
			FirstTab = Name
			TabButton.BackgroundColor3 = SelectedTheme.TabBackgroundSelected
			TabButton.Image.ImageColor3 = SelectedTheme.SelectedTabTextColor
			TabButton.Title.TextColor3 = SelectedTheme.SelectedTabTextColor
			TweenService:Create(TabButton.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0.9}):Play()
			TweenService:Create(TabButton.Image, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
			TweenService:Create(TabButton, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
			TweenService:Create(TabButton.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
		end


		TabButton.Interact.MouseButton1Click:Connect(function()
			if Minimised then return end
			TweenService:Create(TabButton, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
			TweenService:Create(TabButton.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
			TweenService:Create(TabButton.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
			TweenService:Create(TabButton.Image, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
			TweenService:Create(TabButton, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.TabBackgroundSelected}):Play()
			TweenService:Create(TabButton.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextColor3 = SelectedTheme.SelectedTabTextColor}):Play()
			TweenService:Create(TabButton.Image, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageColor3 = SelectedTheme.SelectedTabTextColor}):Play()
			TweenService:Create(TabButton.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0.9}):Play()

			for _, OtherTabButton in ipairs(TabList:GetChildren()) do
				if OtherTabButton.Name ~= "Template" and OtherTabButton.ClassName == "Frame" and OtherTabButton ~= TabButton and OtherTabButton.Name ~= "Placeholder" then
					TweenService:Create(OtherTabButton, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.TabBackground}):Play()
					TweenService:Create(OtherTabButton.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextColor3 = SelectedTheme.TabTextColor}):Play()
					TweenService:Create(OtherTabButton.Image, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageColor3 = SelectedTheme.TabTextColor}):Play()
					TweenService:Create(OtherTabButton, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.7}):Play()
					TweenService:Create(OtherTabButton.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0.2}):Play()
					TweenService:Create(OtherTabButton.Image, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0.2}):Play()
					TweenService:Create(OtherTabButton.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0.7}):Play()
					TweenService:Create(OtherTabButton.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
				end
			end
			if Elements.UIPageLayout.CurrentPage ~= TabPage then
				TweenService:Create(Elements, TweenInfo.new(1, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 460,0, 330)}):Play()
				Elements.UIPageLayout:JumpTo(TabPage)
				wait(0.2)
				TweenService:Create(Elements, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 475,0, 366)}):Play()
			end

		end)

		local Tab = {}

		-- Button
		function Tab:CreateButton(ButtonSettings)
			local ButtonValue = {}

			local Button = Elements.Template.Button:Clone()
			Button.Name = ButtonSettings.Name
			Button.Title.Text = ButtonSettings.Name
			Button.Visible = true
			Button.Parent = TabPage

			Button.BackgroundTransparency = 1
			Button.UIStroke.Transparency = 1
			Button.Title.TextTransparency = 1

			TweenService:Create(Button, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
			TweenService:Create(Button.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
			TweenService:Create(Button.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()	


			Button.Interact.MouseButton1Click:Connect(function()
				local Success, Response = pcall(ButtonSettings.Callback)
				if not Success then
					TweenService:Create(Button, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
					TweenService:Create(Button.ElementIndicator, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
					TweenService:Create(Button.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
					Button.Title.Text = "Callback Error"
					print("Rayfield | "..ButtonSettings.Name.." Callback Error " ..tostring(Response))
					wait(0.5)
					Button.Title.Text = ButtonSettings.Name
					TweenService:Create(Button, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
					TweenService:Create(Button.ElementIndicator, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.9}):Play()
					TweenService:Create(Button.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
				else
					SaveConfiguration()
					TweenService:Create(Button, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackgroundHover}):Play()
					TweenService:Create(Button.ElementIndicator, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
					TweenService:Create(Button.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
					wait(0.2)
					TweenService:Create(Button, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
					TweenService:Create(Button.ElementIndicator, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.9}):Play()
					TweenService:Create(Button.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
				end
			end)

			Button.MouseEnter:Connect(function()
				TweenService:Create(Button, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackgroundHover}):Play()
				TweenService:Create(Button.ElementIndicator, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.7}):Play()
			end)

			Button.MouseLeave:Connect(function()
				TweenService:Create(Button, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
				TweenService:Create(Button.ElementIndicator, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.9}):Play()
			end)

			function ButtonValue:Set(NewButton)
				Button.Title.Text = NewButton
				Button.Name = NewButton
			end

			return ButtonValue
		end

		-- ColorPicker
		function Tab:CreateColorPicker(ColorPickerSettings) -- by Throit
			ColorPickerSettings.Type = "ColorPicker"
			local ColorPicker = Elements.Template.ColorPicker:Clone()
			local Background = ColorPicker.CPBackground
			local Display = Background.Display
			local Main = Background.MainCP
			local Slider = ColorPicker.ColorSlider
			ColorPicker.ClipsDescendants = true
			ColorPicker.Name = ColorPickerSettings.Name
			ColorPicker.Title.Text = ColorPickerSettings.Name
			ColorPicker.Visible = true
			ColorPicker.Parent = TabPage
			ColorPicker.Size = UDim2.new(1, -10, 0.028, 35)
			Background.Size = UDim2.new(0, 39, 0, 22)
			Display.BackgroundTransparency = 0
			Main.MainPoint.ImageTransparency = 1
			ColorPicker.Interact.Size = UDim2.new(1, 0, 1, 0)
			ColorPicker.Interact.Position = UDim2.new(0.5, 0, 0.5, 0)
			ColorPicker.RGB.Position = UDim2.new(0, 17, 0, 70)
			ColorPicker.HexInput.Position = UDim2.new(0, 17, 0, 90)
			Main.ImageTransparency = 1
			Background.BackgroundTransparency = 1



			local opened = false 
			local mouse = game.Players.LocalPlayer:GetMouse()
			Main.Image = "http://www.roblox.com/asset/?id=11415645739"
			local mainDragging = false 
			local sliderDragging = false 
			ColorPicker.Interact.MouseButton1Down:Connect(function()
				if not opened then
					opened = true 
					TweenService:Create(ColorPicker, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(1, -10, 0.224, 40)}):Play()
					TweenService:Create(Background, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 173, 0, 86)}):Play()
					TweenService:Create(Display, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
					TweenService:Create(ColorPicker.Interact, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Position = UDim2.new(0.289, 0, 0.5, 0)}):Play()
					TweenService:Create(ColorPicker.RGB, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 17, 0, 40)}):Play()
					TweenService:Create(ColorPicker.HexInput, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 17, 0, 73)}):Play()
					TweenService:Create(ColorPicker.Interact, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0.574, 0, 1, 0)}):Play()
					TweenService:Create(Main.MainPoint, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
					TweenService:Create(Main, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {ImageTransparency = 0.1}):Play()
					TweenService:Create(Background, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
				else
					opened = false
					TweenService:Create(ColorPicker, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(1, -10, 0.028, 35)}):Play()
					TweenService:Create(Background, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 39, 0, 22)}):Play()
					TweenService:Create(ColorPicker.Interact, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(1, 0, 1, 0)}):Play()
					TweenService:Create(ColorPicker.Interact, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Position = UDim2.new(0.5, 0, 0.5, 0)}):Play()
					TweenService:Create(ColorPicker.RGB, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 17, 0, 70)}):Play()
					TweenService:Create(ColorPicker.HexInput, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 17, 0, 90)}):Play()
					TweenService:Create(Display, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
					TweenService:Create(Main.MainPoint, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
					TweenService:Create(Main, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
					TweenService:Create(Background, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
				end
			end)

			game:GetService("UserInputService").InputEnded:Connect(function(input, gameProcessed) if input.UserInputType == Enum.UserInputType.MouseButton1 then 
					mainDragging = false
					sliderDragging = false
				end end)
			Main.MouseButton1Down:Connect(function()
				if opened then
					mainDragging = true 
				end
			end)
			Main.MainPoint.MouseButton1Down:Connect(function()
				if opened then
					mainDragging = true 
				end
			end)
			Slider.MouseButton1Down:Connect(function()
				sliderDragging = true 
			end)
			Slider.SliderPoint.MouseButton1Down:Connect(function()
				sliderDragging = true 
			end)
			local h,s,v = ColorPickerSettings.Color:ToHSV()
			local color = Color3.fromHSV(h,s,v) 
			local hex = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
			ColorPicker.HexInput.InputBox.Text = hex
			local function setDisplay()
				--Main
				Main.MainPoint.Position = UDim2.new(s,-Main.MainPoint.AbsoluteSize.X/2,1-v,-Main.MainPoint.AbsoluteSize.Y/2)
				Main.MainPoint.ImageColor3 = Color3.fromHSV(h,s,v)
				Background.BackgroundColor3 = Color3.fromHSV(h,1,1)
				Display.BackgroundColor3 = Color3.fromHSV(h,s,v)
				--Slider 
				local x = h * Slider.AbsoluteSize.X
				Slider.SliderPoint.Position = UDim2.new(0,x-Slider.SliderPoint.AbsoluteSize.X/2,0.5,0)
				Slider.SliderPoint.ImageColor3 = Color3.fromHSV(h,1,1)
				local color = Color3.fromHSV(h,s,v) 
				local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
				ColorPicker.RGB.RInput.InputBox.Text = tostring(r)
				ColorPicker.RGB.GInput.InputBox.Text = tostring(g)
				ColorPicker.RGB.BInput.InputBox.Text = tostring(b)
				hex = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
				ColorPicker.HexInput.InputBox.Text = hex
			end
			setDisplay()
			ColorPicker.HexInput.InputBox.FocusLost:Connect(function()
				if not pcall(function()
						local r, g, b = string.match(ColorPicker.HexInput.InputBox.Text, "^#?(%w%w)(%w%w)(%w%w)$")
						local rgbColor = Color3.fromRGB(tonumber(r, 16),tonumber(g, 16), tonumber(b, 16))
						h,s,v = rgbColor:ToHSV()
						hex = ColorPicker.HexInput.InputBox.Text
						setDisplay()
						ColorPickerSettings.Color = rgbColor
					end) 
				then 
					ColorPicker.HexInput.InputBox.Text = hex 
				end
				pcall(function()ColorPickerSettings.Callback(Color3.fromHSV(h,s,v))end)
				local r,g,b = math.floor((h*255)+0.5),math.floor((s*255)+0.5),math.floor((v*255)+0.5)
				ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
				SaveConfiguration()
			end)
			--RGB
			local function rgbBoxes(box,toChange)
				local value = tonumber(box.Text) 
				local color = Color3.fromHSV(h,s,v) 
				local oldR,oldG,oldB = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
				local save 
				if toChange == "R" then save = oldR;oldR = value elseif toChange == "G" then save = oldG;oldG = value else save = oldB;oldB = value end
				if value then 
					value = math.clamp(value,0,255)
					h,s,v = Color3.fromRGB(oldR,oldG,oldB):ToHSV()

					setDisplay()
				else 
					box.Text = tostring(save)
				end
				local r,g,b = math.floor((h*255)+0.5),math.floor((s*255)+0.5),math.floor((v*255)+0.5)
				ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
				SaveConfiguration()
			end
			ColorPicker.RGB.RInput.InputBox.FocusLost:connect(function()
				rgbBoxes(ColorPicker.RGB.RInput.InputBox,"R")
				pcall(function()ColorPickerSettings.Callback(Color3.fromHSV(h,s,v))end)
			end)
			ColorPicker.RGB.GInput.InputBox.FocusLost:connect(function()
				rgbBoxes(ColorPicker.RGB.GInput.InputBox,"G")
				pcall(function()ColorPickerSettings.Callback(Color3.fromHSV(h,s,v))end)
			end)
			ColorPicker.RGB.BInput.InputBox.FocusLost:connect(function()
				rgbBoxes(ColorPicker.RGB.BInput.InputBox,"B")
				pcall(function()ColorPickerSettings.Callback(Color3.fromHSV(h,s,v))end)
			end)

			game:GetService("RunService").RenderStepped:connect(function()
				if mainDragging then 
					local localX = math.clamp(mouse.X-Main.AbsolutePosition.X,0,Main.AbsoluteSize.X)
					local localY = math.clamp(mouse.Y-Main.AbsolutePosition.Y,0,Main.AbsoluteSize.Y)
					Main.MainPoint.Position = UDim2.new(0,localX-Main.MainPoint.AbsoluteSize.X/2,0,localY-Main.MainPoint.AbsoluteSize.Y/2)
					s = localX / Main.AbsoluteSize.X
					v = 1 - (localY / Main.AbsoluteSize.Y)
					Display.BackgroundColor3 = Color3.fromHSV(h,s,v)
					Main.MainPoint.ImageColor3 = Color3.fromHSV(h,s,v)
					Background.BackgroundColor3 = Color3.fromHSV(h,1,1)
					local color = Color3.fromHSV(h,s,v) 
					local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
					ColorPicker.RGB.RInput.InputBox.Text = tostring(r)
					ColorPicker.RGB.GInput.InputBox.Text = tostring(g)
					ColorPicker.RGB.BInput.InputBox.Text = tostring(b)
					ColorPicker.HexInput.InputBox.Text = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
					pcall(function()ColorPickerSettings.Callback(Color3.fromHSV(h,s,v))end)
					ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
					SaveConfiguration()
				end
				if sliderDragging then 
					local localX = math.clamp(mouse.X-Slider.AbsolutePosition.X,0,Slider.AbsoluteSize.X)
					h = localX / Slider.AbsoluteSize.X
					Display.BackgroundColor3 = Color3.fromHSV(h,s,v)
					Slider.SliderPoint.Position = UDim2.new(0,localX-Slider.SliderPoint.AbsoluteSize.X/2,0.5,0)
					Slider.SliderPoint.ImageColor3 = Color3.fromHSV(h,1,1)
					Background.BackgroundColor3 = Color3.fromHSV(h,1,1)
					Main.MainPoint.ImageColor3 = Color3.fromHSV(h,s,v)
					local color = Color3.fromHSV(h,s,v) 
					local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
					ColorPicker.RGB.RInput.InputBox.Text = tostring(r)
					ColorPicker.RGB.GInput.InputBox.Text = tostring(g)
					ColorPicker.RGB.BInput.InputBox.Text = tostring(b)
					ColorPicker.HexInput.InputBox.Text = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
					pcall(function()ColorPickerSettings.Callback(Color3.fromHSV(h,s,v))end)
					ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
					SaveConfiguration()
				end
			end)

			if Settings.ConfigurationSaving then
				if Settings.ConfigurationSaving.Enabled and ColorPickerSettings.Flag then
					RayfieldLibrary.Flags[ColorPickerSettings.Flag] = ColorPickerSettings
				end
			end

			function ColorPickerSettings:Set(RGBColor)
				ColorPickerSettings.Color = RGBColor
				h,s,v = ColorPickerSettings.Color:ToHSV()
				color = Color3.fromHSV(h,s,v)
				setDisplay()
			end

			return ColorPickerSettings
		end

		-- Section
		function Tab:CreateSection(SectionName)

			local SectionValue = {}

			if SDone then
				local SectionSpace = Elements.Template.SectionSpacing:Clone()
				SectionSpace.Visible = true
				SectionSpace.Parent = TabPage
			end

			local Section = Elements.Template.SectionTitle:Clone()
			Section.Title.Text = SectionName
			Section.Visible = true
			Section.Parent = TabPage

			Section.Title.TextTransparency = 1
			TweenService:Create(Section.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()

			function SectionValue:Set(NewSection)
				Section.Title.Text = NewSection
			end

			SDone = true

			return SectionValue
		end

		-- Label
		function Tab:CreateLabel(LabelText)
			local LabelValue = {}

			local Label = Elements.Template.Label:Clone()
			Label.Title.Text = LabelText
			Label.Visible = true
			Label.Parent = TabPage

			Label.BackgroundTransparency = 1
			Label.UIStroke.Transparency = 1
			Label.Title.TextTransparency = 1

			Label.BackgroundColor3 = SelectedTheme.SecondaryElementBackground
			Label.UIStroke.Color = SelectedTheme.SecondaryElementStroke

			TweenService:Create(Label, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
			TweenService:Create(Label.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
			TweenService:Create(Label.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()	

			function LabelValue:Set(NewLabel)
				Label.Title.Text = NewLabel
			end

			return LabelValue
		end

		-- Paragraph
		function Tab:CreateParagraph(ParagraphSettings)
			local ParagraphValue = {}

			local Paragraph = Elements.Template.Paragraph:Clone()
			Paragraph.Title.Text = ParagraphSettings.Title
			Paragraph.Content.Text = ParagraphSettings.Content
			Paragraph.Visible = true
			Paragraph.Parent = TabPage

			Paragraph.Content.Size = UDim2.new(0, 438, 0, Paragraph.Content.TextBounds.Y)
			Paragraph.Content.Position = UDim2.new(1, -10, 0.575,0 )
			Paragraph.Size = UDim2.new(1, -10, 0, Paragraph.Content.TextBounds.Y + 40)

			Paragraph.BackgroundTransparency = 1
			Paragraph.UIStroke.Transparency = 1
			Paragraph.Title.TextTransparency = 1
			Paragraph.Content.TextTransparency = 1

			Paragraph.BackgroundColor3 = SelectedTheme.SecondaryElementBackground
			Paragraph.UIStroke.Color = SelectedTheme.SecondaryElementStroke

			TweenService:Create(Paragraph, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
			TweenService:Create(Paragraph.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
			TweenService:Create(Paragraph.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()	
			TweenService:Create(Paragraph.Content, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()	

			function ParagraphValue:Set(NewParagraphSettings)
				Paragraph.Title.Text = NewParagraphSettings.Title
				Paragraph.Content.Text = NewParagraphSettings.Content
			end

			return ParagraphValue
		end

		-- Input
		function Tab:CreateInput(InputSettings)
			local Input = Elements.Template.Input:Clone()
			Input.Name = InputSettings.Name
			Input.Title.Text = InputSettings.Name
			Input.Visible = true
			Input.Parent = TabPage

			Input.BackgroundTransparency = 1
			Input.UIStroke.Transparency = 1
			Input.Title.TextTransparency = 1

			Input.InputFrame.BackgroundColor3 = SelectedTheme.InputBackground
			Input.InputFrame.UIStroke.Color = SelectedTheme.InputStroke

			TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
			TweenService:Create(Input.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
			TweenService:Create(Input.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()	

			Input.InputFrame.InputBox.PlaceholderText = InputSettings.PlaceholderText
			Input.InputFrame.Size = UDim2.new(0, Input.InputFrame.InputBox.TextBounds.X + 24, 0, 30)

			Input.InputFrame.InputBox.FocusLost:Connect(function()


				local Success, Response = pcall(function()
					InputSettings.Callback(Input.InputFrame.InputBox.Text)
				end)
				if not Success then
					TweenService:Create(Input, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
					TweenService:Create(Input.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
					Input.Title.Text = "Callback Error"
					print("Rayfield | "..InputSettings.Name.." Callback Error " ..tostring(Response))
					wait(0.5)
					Input.Title.Text = InputSettings.Name
					TweenService:Create(Input, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
					TweenService:Create(Input.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
				end

				if InputSettings.RemoveTextAfterFocusLost then
					Input.InputFrame.InputBox.Text = ""
				end
				SaveConfiguration()
			end)

			Input.MouseEnter:Connect(function()
				TweenService:Create(Input, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackgroundHover}):Play()
			end)

			Input.MouseLeave:Connect(function()
				TweenService:Create(Input, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
			end)

			Input.InputFrame.InputBox:GetPropertyChangedSignal("Text"):Connect(function()
				TweenService:Create(Input.InputFrame, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = UDim2.new(0, Input.InputFrame.InputBox.TextBounds.X + 24, 0, 30)}):Play()
			end)
		end

		-- Dropdown
		function Tab:CreateDropdown(DropdownSettings)
			local Dropdown = Elements.Template.Dropdown:Clone()
			if string.find(DropdownSettings.Name,"closed") then
				Dropdown.Name = "Dropdown"
			else
				Dropdown.Name = DropdownSettings.Name
			end
			Dropdown.Title.Text = DropdownSettings.Name
			Dropdown.Visible = true
			Dropdown.Parent = TabPage

			Dropdown.List.Visible = false

			if typeof(DropdownSettings.CurrentOption) == "string" then
				DropdownSettings.CurrentOption = {DropdownSettings.CurrentOption}
			end

			if not DropdownSettings.MultipleOptions then
				DropdownSettings.CurrentOption = {DropdownSettings.CurrentOption[1]}
			end

			if DropdownSettings.MultipleOptions then
				if #DropdownSettings.CurrentOption == 1 then
					Dropdown.Selected.Text = DropdownSettings.CurrentOption[1]
				elseif #DropdownSettings.CurrentOption == 0 then
					Dropdown.Selected.Text = "None"
				else
					Dropdown.Selected.Text = "Various"
				end
			else
				Dropdown.Selected.Text = DropdownSettings.CurrentOption[1]
			end


			Dropdown.BackgroundTransparency = 1
			Dropdown.UIStroke.Transparency = 1
			Dropdown.Title.TextTransparency = 1

			Dropdown.Size = UDim2.new(1, -10, 0, 45)

			TweenService:Create(Dropdown, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
			TweenService:Create(Dropdown.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
			TweenService:Create(Dropdown.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()	

			for _, ununusedoption in ipairs(Dropdown.List:GetChildren()) do
				if ununusedoption.ClassName == "Frame" and ununusedoption.Name ~= "Placeholder" then
					ununusedoption:Destroy()
				end
			end

			Dropdown.Toggle.Rotation = 180

			Dropdown.Interact.MouseButton1Click:Connect(function()
				TweenService:Create(Dropdown, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackgroundHover}):Play()
				TweenService:Create(Dropdown.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
				wait(0.1)
				TweenService:Create(Dropdown, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
				TweenService:Create(Dropdown.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
				if Debounce then return end
				if Dropdown.List.Visible then
					Debounce = true
					TweenService:Create(Dropdown, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(1, -10, 0, 45)}):Play()
					for _, DropdownOpt in ipairs(Dropdown.List:GetChildren()) do
						if DropdownOpt.ClassName == "Frame" and DropdownOpt.Name ~= "Placeholder" then
							TweenService:Create(DropdownOpt, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
							TweenService:Create(DropdownOpt.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
							TweenService:Create(DropdownOpt.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
						end
					end
					TweenService:Create(Dropdown.List, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ScrollBarImageTransparency = 1}):Play()
					TweenService:Create(Dropdown.Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Rotation = 180}):Play()	
					wait(0.35)
					Dropdown.List.Visible = false
					Debounce = false
				else
					TweenService:Create(Dropdown, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(1, -10, 0, 180)}):Play()
					Dropdown.List.Visible = true
					TweenService:Create(Dropdown.List, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ScrollBarImageTransparency = 0.7}):Play()
					TweenService:Create(Dropdown.Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Rotation = 0}):Play()	
					for _, DropdownOpt in ipairs(Dropdown.List:GetChildren()) do
						if DropdownOpt.ClassName == "Frame" and DropdownOpt.Name ~= "Placeholder" then
							TweenService:Create(DropdownOpt, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
							TweenService:Create(DropdownOpt.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
							TweenService:Create(DropdownOpt.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
						end
					end
				end
			end)

			Dropdown.MouseEnter:Connect(function()
				if not Dropdown.List.Visible then
					TweenService:Create(Dropdown, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackgroundHover}):Play()
				end
			end)

			Dropdown.MouseLeave:Connect(function()
				TweenService:Create(Dropdown, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
			end)

			for _, Option in ipairs(DropdownSettings.Options) do
				local DropdownOption = Elements.Template.Dropdown.List.Template:Clone()
				DropdownOption.Name = Option
				DropdownOption.Title.Text = Option
				DropdownOption.Parent = Dropdown.List
				DropdownOption.Visible = true

				if DropdownSettings.CurrentOption == Option then
					DropdownOption.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
				end

				DropdownOption.BackgroundTransparency = 1
				DropdownOption.UIStroke.Transparency = 1
				DropdownOption.Title.TextTransparency = 1

				--local Dropdown = Tab:CreateDropdown({
				--	Name = "Dropdown Example",
				--	Options = {"Option 1","Option 2"},
				--	CurrentOption = {"Option 1"},
				--  MultipleOptions = true,
				--	Flag = "Dropdown1",
				--	Callback = function(TableOfOptions)

				--	end,
				--})


				DropdownOption.Interact.ZIndex = 50
				DropdownOption.Interact.MouseButton1Click:Connect(function()
					if not DropdownSettings.MultipleOptions and table.find(DropdownSettings.CurrentOption, Option) then 
						return
					end

					if table.find(DropdownSettings.CurrentOption, Option) then
						table.remove(DropdownSettings.CurrentOption, table.find(DropdownSettings.CurrentOption, Option))
						if DropdownSettings.MultipleOptions then
							if #DropdownSettings.CurrentOption == 1 then
								Dropdown.Selected.Text = DropdownSettings.CurrentOption[1]
							elseif #DropdownSettings.CurrentOption == 0 then
								Dropdown.Selected.Text = "None"
							else
								Dropdown.Selected.Text = "Various"
							end
						else
							Dropdown.Selected.Text = DropdownSettings.CurrentOption[1]
						end
					else
						if not DropdownSettings.MultipleOptions then
							table.clear(DropdownSettings.CurrentOption)
						end
						table.insert(DropdownSettings.CurrentOption, Option)
						if DropdownSettings.MultipleOptions then
							if #DropdownSettings.CurrentOption == 1 then
								Dropdown.Selected.Text = DropdownSettings.CurrentOption[1]
							elseif #DropdownSettings.CurrentOption == 0 then
								Dropdown.Selected.Text = "None"
							else
								Dropdown.Selected.Text = "Various"
							end
						else
							Dropdown.Selected.Text = DropdownSettings.CurrentOption[1]
						end
						TweenService:Create(DropdownOption.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
						TweenService:Create(DropdownOption, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(40, 40, 40)}):Play()
						Debounce = true
						wait(0.2)
						TweenService:Create(DropdownOption.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
					end


					local Success, Response = pcall(function()
						DropdownSettings.Callback(DropdownSettings.CurrentOption)
					end)

					if not Success then
						TweenService:Create(Dropdown, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
						TweenService:Create(Dropdown.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
						Dropdown.Title.Text = "Callback Error"
						print("Rayfield | "..DropdownSettings.Name.." Callback Error " ..tostring(Response))
						wait(0.5)
						Dropdown.Title.Text = DropdownSettings.Name
						TweenService:Create(Dropdown, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
						TweenService:Create(Dropdown.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
					end

					for _, droption in ipairs(Dropdown.List:GetChildren()) do
						if droption.ClassName == "Frame" and droption.Name ~= "Placeholder" and not table.find(DropdownSettings.CurrentOption, droption.Name) then
							TweenService:Create(droption, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(30, 30, 30)}):Play()
						end
					end
					if not DropdownSettings.MultipleOptions then
						wait(0.1)
						TweenService:Create(Dropdown, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(1, -10, 0, 45)}):Play()
						for _, DropdownOpt in ipairs(Dropdown.List:GetChildren()) do
							if DropdownOpt.ClassName == "Frame" and DropdownOpt.Name ~= "Placeholder" then
								TweenService:Create(DropdownOpt, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
								TweenService:Create(DropdownOpt.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
								TweenService:Create(DropdownOpt.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
							end
						end
						TweenService:Create(Dropdown.List, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ScrollBarImageTransparency = 1}):Play()
						TweenService:Create(Dropdown.Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Rotation = 180}):Play()	
						wait(0.35)
						Dropdown.List.Visible = false
					end
					Debounce = false	
					SaveConfiguration()
				end)
			end

			for _, droption in ipairs(Dropdown.List:GetChildren()) do
				if droption.ClassName == "Frame" and droption.Name ~= "Placeholder" then
					if not table.find(DropdownSettings.CurrentOption, droption.Name) then
						droption.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
					else
						droption.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
					end
				end
			end

			function DropdownSettings:Set(NewOption)
				DropdownSettings.CurrentOption = NewOption

				if typeof(DropdownSettings.CurrentOption) == "string" then
					DropdownSettings.CurrentOption = {DropdownSettings.CurrentOption}
				end

				if not DropdownSettings.MultipleOptions then
					DropdownSettings.CurrentOption = {DropdownSettings.CurrentOption[1]}
				end

				if DropdownSettings.MultipleOptions then
					if #DropdownSettings.CurrentOption == 1 then
						Dropdown.Selected.Text = DropdownSettings.CurrentOption[1]
					elseif #DropdownSettings.CurrentOption == 0 then
						Dropdown.Selected.Text = "None"
					else
						Dropdown.Selected.Text = "Various"
					end
				else
					Dropdown.Selected.Text = DropdownSettings.CurrentOption[1]
				end


				local Success, Response = pcall(function()
					DropdownSettings.Callback(NewOption)
				end)
				if not Success then
					TweenService:Create(Dropdown, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
					TweenService:Create(Dropdown.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
					Dropdown.Title.Text = "Callback Error"
					print("Rayfield | "..DropdownSettings.Name.." Callback Error " ..tostring(Response))
					wait(0.5)
					Dropdown.Title.Text = DropdownSettings.Name
					TweenService:Create(Dropdown, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
					TweenService:Create(Dropdown.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
				end

				for _, droption in ipairs(Dropdown.List:GetChildren()) do
					if droption.ClassName == "Frame" and droption.Name ~= "Placeholder" then
						if not table.find(DropdownSettings.CurrentOption, droption.Name) then
							droption.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
						else
							droption.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
						end
					end
				end
				--SaveConfiguration()
			end

			if Settings.ConfigurationSaving then
				if Settings.ConfigurationSaving.Enabled and DropdownSettings.Flag then
					RayfieldLibrary.Flags[DropdownSettings.Flag] = DropdownSettings
				end
			end

			return DropdownSettings
		end

		-- Keybind
		function Tab:CreateKeybind(KeybindSettings)
			local CheckingForKey = false
			local Keybind = Elements.Template.Keybind:Clone()
			Keybind.Name = KeybindSettings.Name
			Keybind.Title.Text = KeybindSettings.Name
			Keybind.Visible = true
			Keybind.Parent = TabPage

			Keybind.BackgroundTransparency = 1
			Keybind.UIStroke.Transparency = 1
			Keybind.Title.TextTransparency = 1

			Keybind.KeybindFrame.BackgroundColor3 = SelectedTheme.InputBackground
			Keybind.KeybindFrame.UIStroke.Color = SelectedTheme.InputStroke

			TweenService:Create(Keybind, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
			TweenService:Create(Keybind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
			TweenService:Create(Keybind.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()	

			Keybind.KeybindFrame.KeybindBox.Text = KeybindSettings.CurrentKeybind
			Keybind.KeybindFrame.Size = UDim2.new(0, Keybind.KeybindFrame.KeybindBox.TextBounds.X + 24, 0, 30)

			Keybind.KeybindFrame.KeybindBox.Focused:Connect(function()
				CheckingForKey = true
				Keybind.KeybindFrame.KeybindBox.Text = ""
			end)
			Keybind.KeybindFrame.KeybindBox.FocusLost:Connect(function()
				CheckingForKey = false
				if Keybind.KeybindFrame.KeybindBox.Text == nil or "" then
					Keybind.KeybindFrame.KeybindBox.Text = KeybindSettings.CurrentKeybind
					SaveConfiguration()
				end
			end)

			Keybind.MouseEnter:Connect(function()
				TweenService:Create(Keybind, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackgroundHover}):Play()
			end)

			Keybind.MouseLeave:Connect(function()
				TweenService:Create(Keybind, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
			end)

			UserInputService.InputBegan:Connect(function(input, processed)

				if CheckingForKey then
					if input.KeyCode ~= Enum.KeyCode.Unknown and input.KeyCode ~= Enum.KeyCode.RightShift then
						local SplitMessage = string.split(tostring(input.KeyCode), ".")
						local NewKeyNoEnum = SplitMessage[3]
						Keybind.KeybindFrame.KeybindBox.Text = tostring(NewKeyNoEnum)
						KeybindSettings.CurrentKeybind = tostring(NewKeyNoEnum)
						Keybind.KeybindFrame.KeybindBox:ReleaseFocus()
						SaveConfiguration()
					end
				elseif KeybindSettings.CurrentKeybind ~= nil and (input.KeyCode == Enum.KeyCode[KeybindSettings.CurrentKeybind] and not processed) then -- Test
					local Held = true
					local Connection
					Connection = input.Changed:Connect(function(prop)
						if prop == "UserInputState" then
							Connection:Disconnect()
							Held = false
						end
					end)

					if not KeybindSettings.HoldToInteract then
						local Success, Response = pcall(KeybindSettings.Callback)
						if not Success then
							TweenService:Create(Keybind, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
							TweenService:Create(Keybind.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
							Keybind.Title.Text = "Callback Error"
							print("Rayfield | "..KeybindSettings.Name.." Callback Error " ..tostring(Response))
							wait(0.5)
							Keybind.Title.Text = KeybindSettings.Name
							TweenService:Create(Keybind, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
							TweenService:Create(Keybind.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
						end
					else
						wait(0.25)
						if Held then
							local Loop; Loop = RunService.Stepped:Connect(function()
								if not Held then
									KeybindSettings.Callback(false) -- maybe pcall this
									Loop:Disconnect()
								else
									KeybindSettings.Callback(true) -- maybe pcall this
								end
							end)	
						end
					end
				end
			end)

			Keybind.KeybindFrame.KeybindBox:GetPropertyChangedSignal("Text"):Connect(function()
				TweenService:Create(Keybind.KeybindFrame, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = UDim2.new(0, Keybind.KeybindFrame.KeybindBox.TextBounds.X + 24, 0, 30)}):Play()
			end)

			function KeybindSettings:Set(NewKeybind)
				Keybind.KeybindFrame.KeybindBox.Text = tostring(NewKeybind)
				KeybindSettings.CurrentKeybind = tostring(NewKeybind)
				Keybind.KeybindFrame.KeybindBox:ReleaseFocus()
				SaveConfiguration()
			end
			if Settings.ConfigurationSaving then
				if Settings.ConfigurationSaving.Enabled and KeybindSettings.Flag then
					RayfieldLibrary.Flags[KeybindSettings.Flag] = KeybindSettings
				end
			end
			return KeybindSettings
		end

		-- Toggle
		function Tab:CreateToggle(ToggleSettings)
			local ToggleValue = {}

			local Toggle = Elements.Template.Toggle:Clone()
			Toggle.Name = ToggleSettings.Name
			Toggle.Title.Text = ToggleSettings.Name
			Toggle.Visible = true
			Toggle.Parent = TabPage

			Toggle.BackgroundTransparency = 1
			Toggle.UIStroke.Transparency = 1
			Toggle.Title.TextTransparency = 1
			Toggle.Switch.BackgroundColor3 = SelectedTheme.ToggleBackground

			if SelectedTheme ~= RayfieldLibrary.Theme.Default then
				Toggle.Switch.Shadow.Visible = false
			end

			TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
			TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
			TweenService:Create(Toggle.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()	

			if not ToggleSettings.CurrentValue then
				Toggle.Switch.Indicator.Position = UDim2.new(1, -40, 0.5, 0)
				Toggle.Switch.Indicator.UIStroke.Color = SelectedTheme.ToggleDisabledStroke
				Toggle.Switch.Indicator.BackgroundColor3 = SelectedTheme.ToggleDisabled
				Toggle.Switch.UIStroke.Color = SelectedTheme.ToggleDisabledOuterStroke
			else
				Toggle.Switch.Indicator.Position = UDim2.new(1, -20, 0.5, 0)
				Toggle.Switch.Indicator.UIStroke.Color = SelectedTheme.ToggleEnabledStroke
				Toggle.Switch.Indicator.BackgroundColor3 = SelectedTheme.ToggleEnabled
				Toggle.Switch.UIStroke.Color = SelectedTheme.ToggleEnabledOuterStroke
			end

			Toggle.MouseEnter:Connect(function()
				TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackgroundHover}):Play()
			end)

			Toggle.MouseLeave:Connect(function()
				TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
			end)

			Toggle.Interact.MouseButton1Click:Connect(function()
				if ToggleSettings.CurrentValue then
					ToggleSettings.CurrentValue = false
					TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackgroundHover}):Play()
					TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
					TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.45, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(1, -40, 0.5, 0)}):Play()
					TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0,12,0,12)}):Play()
					TweenService:Create(Toggle.Switch.Indicator.UIStroke, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Color = SelectedTheme.ToggleDisabledStroke}):Play()
					TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.8, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {BackgroundColor3 = SelectedTheme.ToggleDisabled}):Play()
					TweenService:Create(Toggle.Switch.UIStroke, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Color = SelectedTheme.ToggleDisabledOuterStroke}):Play()
					wait(0.05)
					TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0,17,0,17)}):Play()
					wait(0.15)
					TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
					TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()	
				else
					ToggleSettings.CurrentValue = true
					TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackgroundHover}):Play()
					TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
					TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(1, -20, 0.5, 0)}):Play()
					TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0,12,0,12)}):Play()
					TweenService:Create(Toggle.Switch.Indicator.UIStroke, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Color = SelectedTheme.ToggleEnabledStroke}):Play()
					TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.8, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {BackgroundColor3 = SelectedTheme.ToggleEnabled}):Play()
					TweenService:Create(Toggle.Switch.UIStroke, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Color = SelectedTheme.ToggleEnabledOuterStroke}):Play()
					wait(0.05)
					TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.45, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0,17,0,17)}):Play()	
					wait(0.15)
					TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
					TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()		
				end

				local Success, Response = pcall(function()
					ToggleSettings.Callback(ToggleSettings.CurrentValue)
				end)
				if not Success then
					TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
					TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
					Toggle.Title.Text = "Callback Error"
					print("Rayfield | "..ToggleSettings.Name.." Callback Error " ..tostring(Response))
					wait(0.5)
					Toggle.Title.Text = ToggleSettings.Name
					TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
					TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
				end


				SaveConfiguration()
			end)

			function ToggleSettings:Set(NewToggleValue)
				if NewToggleValue then
					ToggleSettings.CurrentValue = true
					TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackgroundHover}):Play()
					TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
					TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(1, -20, 0.5, 0)}):Play()
					TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0,12,0,12)}):Play()
					TweenService:Create(Toggle.Switch.Indicator.UIStroke, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Color = SelectedTheme.ToggleEnabledStroke}):Play()
					TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.8, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {BackgroundColor3 = SelectedTheme.ToggleEnabled}):Play()
					TweenService:Create(Toggle.Switch.UIStroke, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Color = Color3.fromRGB(100,100,100)}):Play()
					wait(0.05)
					TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.45, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0,17,0,17)}):Play()	
					wait(0.15)
					TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
					TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()	
				else
					ToggleSettings.CurrentValue = false
					TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackgroundHover}):Play()
					TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
					TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.45, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(1, -40, 0.5, 0)}):Play()
					TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0,12,0,12)}):Play()
					TweenService:Create(Toggle.Switch.Indicator.UIStroke, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Color = SelectedTheme.ToggleDisabledStroke}):Play()
					TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.8, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {BackgroundColor3 = SelectedTheme.ToggleDisabled}):Play()
					TweenService:Create(Toggle.Switch.UIStroke, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Color = Color3.fromRGB(65,65,65)}):Play()
					wait(0.05)
					TweenService:Create(Toggle.Switch.Indicator, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0,17,0,17)}):Play()
					wait(0.15)
					TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
					TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()	
				end
				local Success, Response = pcall(function()
					ToggleSettings.Callback(ToggleSettings.CurrentValue)
				end)
				if not Success then
					TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
					TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
					Toggle.Title.Text = "Callback Error"
					print("Rayfield | "..ToggleSettings.Name.." Callback Error " ..tostring(Response))
					wait(0.5)
					Toggle.Title.Text = ToggleSettings.Name
					TweenService:Create(Toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
					TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
				end
				SaveConfiguration()
			end

			if Settings.ConfigurationSaving then
				if Settings.ConfigurationSaving.Enabled and ToggleSettings.Flag then
					RayfieldLibrary.Flags[ToggleSettings.Flag] = ToggleSettings
				end
			end

			return ToggleSettings
		end

		-- Slider
		function Tab:CreateSlider(SliderSettings)
			local Dragging = false
			local Slider = Elements.Template.Slider:Clone()
			Slider.Name = SliderSettings.Name
			Slider.Title.Text = SliderSettings.Name
			Slider.Visible = true
			Slider.Parent = TabPage

			Slider.BackgroundTransparency = 1
			Slider.UIStroke.Transparency = 1
			Slider.Title.TextTransparency = 1

			if SelectedTheme ~= RayfieldLibrary.Theme.Default then
				Slider.Main.Shadow.Visible = false
			end

			Slider.Main.BackgroundColor3 = SelectedTheme.SliderBackground
			Slider.Main.UIStroke.Color = SelectedTheme.SliderStroke
			Slider.Main.Progress.BackgroundColor3 = SelectedTheme.SliderProgress

			TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
			TweenService:Create(Slider.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
			TweenService:Create(Slider.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()	

			Slider.Main.Progress.Size =	UDim2.new(0, Slider.Main.AbsoluteSize.X * ((SliderSettings.CurrentValue + SliderSettings.Range[1]) / (SliderSettings.Range[2] - SliderSettings.Range[1])) > 5 and Slider.Main.AbsoluteSize.X * (SliderSettings.CurrentValue / (SliderSettings.Range[2] - SliderSettings.Range[1])) or 5, 1, 0)

			if not SliderSettings.Suffix then
				Slider.Main.Information.Text = tostring(SliderSettings.CurrentValue)
			else
				Slider.Main.Information.Text = tostring(SliderSettings.CurrentValue) .. " " .. SliderSettings.Suffix
			end


			Slider.MouseEnter:Connect(function()
				TweenService:Create(Slider, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackgroundHover}):Play()
			end)

			Slider.MouseLeave:Connect(function()
				TweenService:Create(Slider, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
			end)

			Slider.Main.Interact.InputBegan:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 then 
					Dragging = true 
				end 
			end)
			Slider.Main.Interact.InputEnded:Connect(function(Input) 
				if Input.UserInputType == Enum.UserInputType.MouseButton1 then 
					Dragging = false 
				end 
			end)

			Slider.Main.Interact.MouseButton1Down:Connect(function(X)
				local Current = Slider.Main.Progress.AbsolutePosition.X + Slider.Main.Progress.AbsoluteSize.X
				local Start = Current
				local Location = X
				local Loop; Loop = RunService.Stepped:Connect(function()
					if Dragging then
						Location = UserInputService:GetMouseLocation().X
						Current = Current + 0.025 * (Location - Start)

						if Location < Slider.Main.AbsolutePosition.X then
							Location = Slider.Main.AbsolutePosition.X
						elseif Location > Slider.Main.AbsolutePosition.X + Slider.Main.AbsoluteSize.X then
							Location = Slider.Main.AbsolutePosition.X + Slider.Main.AbsoluteSize.X
						end

						if Current < Slider.Main.AbsolutePosition.X + 5 then
							Current = Slider.Main.AbsolutePosition.X + 5
						elseif Current > Slider.Main.AbsolutePosition.X + Slider.Main.AbsoluteSize.X then
							Current = Slider.Main.AbsolutePosition.X + Slider.Main.AbsoluteSize.X
						end

						if Current <= Location and (Location - Start) < 0 then
							Start = Location
						elseif Current >= Location and (Location - Start) > 0 then
							Start = Location
						end
						TweenService:Create(Slider.Main.Progress, TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = UDim2.new(0, Current - Slider.Main.AbsolutePosition.X, 1, 0)}):Play()
						local NewValue = SliderSettings.Range[1] + (Location - Slider.Main.AbsolutePosition.X) / Slider.Main.AbsoluteSize.X * (SliderSettings.Range[2] - SliderSettings.Range[1])

						NewValue = math.floor(NewValue / SliderSettings.Increment + 0.5) * (SliderSettings.Increment * 10000000) / 10000000
						if not SliderSettings.Suffix then
							Slider.Main.Information.Text = tostring(NewValue)
						else
							Slider.Main.Information.Text = tostring(NewValue) .. " " .. SliderSettings.Suffix
						end

						if SliderSettings.CurrentValue ~= NewValue then
							local Success, Response = pcall(function()
								SliderSettings.Callback(NewValue)
							end)
							if not Success then
								TweenService:Create(Slider, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
								TweenService:Create(Slider.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
								Slider.Title.Text = "Callback Error"
								print("Rayfield | "..SliderSettings.Name.." Callback Error " ..tostring(Response))
								wait(0.5)
								Slider.Title.Text = SliderSettings.Name
								TweenService:Create(Slider, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
								TweenService:Create(Slider.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
							end

							SliderSettings.CurrentValue = NewValue
							SaveConfiguration()
						end
					else
						TweenService:Create(Slider.Main.Progress, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = UDim2.new(0, Location - Slider.Main.AbsolutePosition.X > 5 and Location - Slider.Main.AbsolutePosition.X or 5, 1, 0)}):Play()
						Loop:Disconnect()
					end
				end)
			end)

			function SliderSettings:Set(NewVal)
				TweenService:Create(Slider.Main.Progress, TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = UDim2.new(0, Slider.Main.AbsoluteSize.X * ((NewVal + SliderSettings.Range[1]) / (SliderSettings.Range[2] - SliderSettings.Range[1])) > 5 and Slider.Main.AbsoluteSize.X * (NewVal / (SliderSettings.Range[2] - SliderSettings.Range[1])) or 5, 1, 0)}):Play()
				Slider.Main.Information.Text = tostring(NewVal) .. " " .. SliderSettings.Suffix
				local Success, Response = pcall(function()
					SliderSettings.Callback(NewVal)
				end)
				if not Success then
					TweenService:Create(Slider, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
					TweenService:Create(Slider.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
					Slider.Title.Text = "Callback Error"
					print("Rayfield | "..SliderSettings.Name.." Callback Error " ..tostring(Response))
					wait(0.5)
					Slider.Title.Text = SliderSettings.Name
					TweenService:Create(Slider, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundColor3 = SelectedTheme.ElementBackground}):Play()
					TweenService:Create(Slider.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
				end
				SliderSettings.CurrentValue = NewVal
				SaveConfiguration()
			end
			if Settings.ConfigurationSaving then
				if Settings.ConfigurationSaving.Enabled and SliderSettings.Flag then
					RayfieldLibrary.Flags[SliderSettings.Flag] = SliderSettings
				end
			end
			return SliderSettings
		end


		return Tab
	end

	Elements.Visible = true

	wait(0.7)
	TweenService:Create(LoadingFrame.Title, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
	TweenService:Create(LoadingFrame.Subtitle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
	TweenService:Create(LoadingFrame.Version, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
	wait(0.2)
	TweenService:Create(Main, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 500, 0, 475)}):Play()
	TweenService:Create(Main.Shadow.Image, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0.4}):Play()

	Topbar.BackgroundTransparency = 1
	Topbar.Divider.Size = UDim2.new(0, 0, 0, 1)
	Topbar.CornerRepair.BackgroundTransparency = 1
	Topbar.Title.TextTransparency = 1
	Topbar.Theme.ImageTransparency = 1
	Topbar.ChangeSize.ImageTransparency = 1
	Topbar.Hide.ImageTransparency = 1

	wait(0.5)
	Topbar.Visible = true
	TweenService:Create(Topbar, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
	TweenService:Create(Topbar.CornerRepair, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
	wait(0.1)
	TweenService:Create(Topbar.Divider, TweenInfo.new(1, Enum.EasingStyle.Quint), {Size = UDim2.new(1, 0, 0, 1)}):Play()
	wait(0.1)
	TweenService:Create(Topbar.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
	wait(0.1)
	TweenService:Create(Topbar.Theme, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0.8}):Play()
	wait(0.1)
	TweenService:Create(Topbar.ChangeSize, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0.8}):Play()
	wait(0.1)
	TweenService:Create(Topbar.Hide, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0.8}):Play()
	wait(0.3)

	return Window
end


function RayfieldLibrary:Destroy()
	Rayfield:Destroy()
end

Topbar.ChangeSize.MouseButton1Click:Connect(function()
	if Debounce then return end
	if Minimised then
		Minimised = false
		Maximise()
	else
		Minimised = true
		Minimise()
	end
end)

Topbar.Hide.MouseButton1Click:Connect(function()
	if Debounce then return end
	if Hidden then
		Hidden = false
		Minimised = false
		Unhide()
	else
		Hidden = true
		Hide()
	end
end)

UserInputService.InputBegan:Connect(function(input, processed)
	if (input.KeyCode == Enum.KeyCode.RightShift and not processed) then
		if Debounce then return end
		if Hidden then
			Hidden = false
			Unhide()
		else
			Hidden = true
			Hide()
		end
	end
end)

for _, TopbarButton in ipairs(Topbar:GetChildren()) do
	if TopbarButton.ClassName == "ImageButton" then
		TopbarButton.MouseEnter:Connect(function()
			TweenService:Create(TopbarButton, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
		end)

		TopbarButton.MouseLeave:Connect(function()
			TweenService:Create(TopbarButton, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0.8}):Play()
		end)

		TopbarButton.MouseButton1Click:Connect(function()
			TweenService:Create(TopbarButton, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0.8}):Play()
		end)
	end
end


function RayfieldLibrary:LoadConfiguration()
	if CEnabled then
		pcall(function()
			if isfile(ConfigurationFolder .. "/" .. CFileName .. ConfigurationExtension) then
				LoadConfiguration(readfile(ConfigurationFolder .. "/" .. CFileName .. ConfigurationExtension))
				RayfieldLibrary:Notify({Title = "Configuration Loaded", Content = "The configuration file for this script has been loaded from a previous session"})
			end
		end)
	end
end

task.delay(3.5, RayfieldLibrary.LoadConfiguration, RayfieldLibrary)

return RayfieldLibrary
