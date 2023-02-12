--		SCRIPT BY SLEEZZI
-- 		Discord: https://discord.gg/kzpUQaNqyV


local Player = game:GetService("Players").LocalPlayer
local TweenService = game:GetService("TweenService")
local Mouse = Player:GetMouse()
local URL = "https://raw.githubusercontent.com/Sleezzi/VenusX/main/"

local Players = game.Players
local UIS = game:GetService("UserInputService")
local dragToggleFrame = nil
local dragSpeedFrame = 0.1
local dragStartFrame = nil
local StartPosFrame = nil
local InputKeyHold = true
local White = Color3.new(1, 1, 1)
local Gray = Color3.new(0.666667, 0.666667, 0.666667)

local InfiniteJumpOn = false
local ESPOn = false
local SprintOn = false
local OFFOn = false

local running = false

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Hack By Sleezzi"
ScreenGui.Parent = Player.PlayerGui

local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.Size  = UDim2.new(0.234, 0, 0.822, 0)
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.Transparency = 0.5

local UICornerFrame = Instance.new("UICorner")
UICornerFrame.Parent = Frame

local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Parent = Frame
Title.Position = UDim2.new(0, 0, 0, 0)
Title.Size = UDim2.new(1, 0, 0.15, 0)
Title.Text = "Hack by Sleezzi"
Title.TextScaled = true
Title.TextColor3 = Color3.new(0, 0, 0)
Title.TextStrokeColor3 = Color3.new(1, 1, 1)
Title.TextStrokeTransparency = 0
Title.BackgroundTransparency = 1
Title.FontFace = Font.fromEnum(Enum.Font.FredokaOne)

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.Parent = Frame
ScrollingFrame.Size = UDim2.new(1, 0, 0.85, 0)
ScrollingFrame.Position = UDim2.new(0, 0, 0.15, 0)
ScrollingFrame.BackgroundTransparency = 1

local Misc = Instance.new("Folder")
Misc.Parent = ScrollingFrame
Misc.Name = "Misc"

local TitleMisc = Instance.new("TextLabel")
TitleMisc.Text = "Misc"
TitleMisc.Size = UDim2.new(1, 0, 0.027, 0)
TitleMisc.Position = UDim2.new(0, 0, 0.185, 0)
TitleMisc.BackgroundColor3 = Color3.new(0, 0, 0)
TitleMisc.BackgroundTransparency = 0.5
TitleMisc.Parent = Misc
TitleMisc.Name = "Title"
TitleMisc.FontFace = Font.fromEnum(Enum.Font.FredokaOne)
TitleMisc.TextScaled = true
TitleMisc.TextColor3 = Color3.new(1, 1, 1)

local InfiniteJumpFolder = Instance.new("Folder")
InfiniteJumpFolder.Parent = Misc
InfiniteJumpFolder.Name = "InfiniteJump"

local InfiniteJump = Instance.new("TextButton")
InfiniteJump.BackgroundColor3 = Color3.new(1, 1, 1)
InfiniteJump.BackgroundTransparency = 1
InfiniteJump.Name = "InfiniteJump"
InfiniteJump.Parent = InfiniteJumpFolder
InfiniteJump.Text = "Infinite Jump"
InfiniteJump.Size = UDim2.new(0.755, 0, 0.04, 0)
InfiniteJump.Position = UDim2.new(0, 0, 0.371, 0)
InfiniteJump.FontFace = Font.fromEnum(Enum.Font.FredokaOne)
InfiniteJump.TextColor3 = Color3.new(1, 1, 1)
InfiniteJump.TextScaled = true
InfiniteJump.TextStrokeTransparency = 0

local InfiniteJumpSelector = Instance.new("TextButton")
InfiniteJumpSelector.Parent = InfiniteJump
InfiniteJumpSelector.Text = ""
InfiniteJumpSelector.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
InfiniteJumpSelector.Size = UDim2.new(0.267, 0, 0.92, 0)
InfiniteJumpSelector.Position = UDim2.new(1, 0, 0.027, 0)

local InfiniteJumpSelectorCorner = Instance.new("UICorner")
InfiniteJumpSelectorCorner.Parent = InfiniteJumpSelector

local InfiniteJumpSelectorCircle = Instance.new("TextButton")
InfiniteJumpSelectorCircle.Parent = InfiniteJumpSelector
InfiniteJumpSelectorCircle.Size = UDim2.new(0.45, 0, 0.818, 0)
InfiniteJumpSelectorCircle.Position = UDim2.new(0.05, 0, 0.085, 0)
InfiniteJumpSelectorCircle.BackgroundColor3 = Color3.new(1, 0, 0)
InfiniteJumpSelectorCircle.Text = ""

local InfiniteJumpSelectorCircleCorner = Instance.new("UICorner")
InfiniteJumpSelectorCircleCorner.Parent = InfiniteJumpSelectorCircle

local ESPFolder = Instance.new("Folder")
ESPFolder.Parent = Misc
ESPFolder.Name = "ESP"

local ESP = Instance.new("TextButton")
ESP.BackgroundColor3 = Color3.new(1, 1, 1)
ESP.BackgroundTransparency = 1
ESP.Name = "ESP"
ESP.Parent = ESPFolder
ESP.Text = "Esp"
ESP.Size = UDim2.new(0.755, 0, 0.04, 0)
ESP.Position = UDim2.new(0, 0, 0.413, 0)
ESP.FontFace = Font.fromEnum(Enum.Font.FredokaOne)
ESP.TextColor3 = Color3.new(1, 1, 1)
ESP.TextScaled = true
ESP.TextStrokeTransparency = 0

local ESPSelector = Instance.new("TextButton")
ESPSelector.Parent = ESP
ESPSelector.Text = ""
ESPSelector.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
ESPSelector.Size = UDim2.new(0.267, 0, 0.92, 0)
ESPSelector.Position = UDim2.new(1, 0, 0.027, 0)

local ESPSelectorCorner = Instance.new("UICorner")
ESPSelectorCorner.Parent = ESPSelector

local ESPSelectorCircle = Instance.new("TextButton")
ESPSelectorCircle.Parent = ESPSelector
ESPSelectorCircle.Size = UDim2.new(0.45, 0, 0.818, 0)
ESPSelectorCircle.Position = UDim2.new(0.05, 0, 0.085, 0)
ESPSelectorCircle.BackgroundColor3 = Color3.new(1, 0, 0)
ESPSelectorCircle.Text = ""

local ESPSelectorCircleCorner = Instance.new("UICorner")
ESPSelectorCircleCorner.Parent = ESPSelectorCircle

local OOFFolder = Instance.new("Folder")
OOFFolder.Parent = Misc
OOFFolder.Name = "OOF"

local OOF = Instance.new("TextButton")
OOF.BackgroundColor3 = Color3.new(1, 1, 1)
OOF.BackgroundTransparency = 1
OOF.Name = "OOF"
OOF.Parent = OOFFolder
OOF.Text = "Better OOF"
OOF.Size = UDim2.new(0.755, 0, 0.04, 0)
OOF.Position = UDim2.new(0, 0, 0.452, 0)
OOF.FontFace = Font.fromEnum(Enum.Font.FredokaOne)
OOF.TextColor3 = Color3.new(1, 1, 1)
OOF.TextScaled = true
OOF.TextStrokeTransparency = 0

local OOFSelector = Instance.new("TextButton")
OOFSelector.Parent = OOF
OOFSelector.Text = ""
OOFSelector.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
OOFSelector.Size = UDim2.new(0.267, 0, 0.92, 0)
OOFSelector.Position = UDim2.new(1, 0, 0.027, 0)

local OOFSelectorCorner = Instance.new("UICorner")
OOFSelectorCorner.Parent = OOFSelector

local OOFSelectorCircle = Instance.new("TextButton")
OOFSelectorCircle.Parent = OOFSelector
OOFSelectorCircle.Size = UDim2.new(0.45, 0, 0.818, 0)
OOFSelectorCircle.Position = UDim2.new(0.05, 0, 0.085, 0)
OOFSelectorCircle.BackgroundColor3 = Color3.new(1, 0, 0)
OOFSelectorCircle.Text = ""

local OOFSelectorCircleCorner = Instance.new("UICorner")
OOFSelectorCircleCorner.Parent = OOFSelectorCircle


local JumpPowerFolder = Instance.new("Folder")
JumpPowerFolder.Parent = Misc

local JumpPower = Instance.new("TextButton")
JumpPower.BackgroundColor3 = Color3.new(1, 1, 1)
JumpPower.BackgroundTransparency = 1
JumpPower.Name = "JumpPower"
JumpPower.Parent = JumpPowerFolder
JumpPower.Text = "JumpPower"
JumpPower.Size = UDim2.new(0.755, 0, 0.04, 0)
JumpPower.Position = UDim2.new(0, 0, 0.334, 0)
JumpPower.FontFace = Font.fromEnum(Enum.Font.FredokaOne)
JumpPower.TextColor3 = Color3.new(1, 1, 1)
JumpPower.TextScaled = true
JumpPower.TextStrokeTransparency = 0

local JumpPowerTextBox = Instance.new("TextBox")
JumpPowerTextBox.Parent = JumpPower
JumpPowerTextBox.Size = UDim2.new(0.267, 0, 0.92, 0)
JumpPowerTextBox.Position = UDim2.new(1, 0, 0.027, 0)
JumpPowerTextBox.BackgroundTransparency = 0.9
JumpPowerTextBox.TextScaled = true
JumpPowerTextBox.Text = Player.Character:WaitForChild("Humanoid").JumpPower
JumpPowerTextBox.TextColor3 = Color3.new(1, 1, 1)
JumpPowerTextBox.FontFace = Font.fromEnum(Enum.Font.FredokaOne)

local JumpPowerCorner = Instance.new("UICorner")
JumpPowerCorner.Parent = JumpPowerTextBox

local SpeedFolder = Instance.new("Folder")
SpeedFolder.Parent = Misc

local Speed = Instance.new("TextButton")
Speed.BackgroundColor3 = Color3.new(1, 1, 1)
Speed.BackgroundTransparency = 1
Speed.Name = "Speed"
Speed.Parent = SpeedFolder
Speed.Text = "Speed"
Speed.Size = UDim2.new(0.755, 0, 0.04, 0)
Speed.Position = UDim2.new(0, 0, 0.291, 0)
Speed.FontFace = Font.fromEnum(Enum.Font.FredokaOne)
Speed.TextColor3 = Color3.new(1, 1, 1)
Speed.TextScaled = true
Speed.TextStrokeTransparency = 0

local SpeedTextBox = Instance.new("TextBox")
SpeedTextBox.Parent = Speed
SpeedTextBox.Size = UDim2.new(0.267, 0, 0.92, 0)
SpeedTextBox.Position = UDim2.new(1, 0, 0.027, 0)
SpeedTextBox.BackgroundTransparency = 0.9
SpeedTextBox.TextScaled = true
SpeedTextBox.Text = Player.Character:WaitForChild("Humanoid").WalkSpeed
SpeedTextBox.TextColor3 = Color3.new(1, 1, 1)
SpeedTextBox.FontFace = Font.fromEnum(Enum.Font.FredokaOne)

local SpeedCorner = Instance.new("UICorner")
SpeedCorner.Parent = SpeedTextBox

local SprintFolder = Instance.new("Folder")
SprintFolder.Parent = Misc
SprintFolder.Name = "Sprint"

local Sprint = Instance.new("TextButton")
Sprint.BackgroundColor3 = Color3.new(1, 1, 1)
Sprint.BackgroundTransparency = 1
Sprint.Name = "Sprint"
Sprint.Parent = SprintFolder
Sprint.Text = "Sprint"
Sprint.Size = UDim2.new(0.755, 0, 0.04, 0)
Sprint.Position = UDim2.new(0, 0, 0.251, 0)
Sprint.FontFace = Font.fromEnum(Enum.Font.FredokaOne)
Sprint.TextColor3 = Color3.new(1, 1, 1)
Sprint.TextScaled = true
Sprint.TextStrokeTransparency = 0

local SpintSelector = Instance.new("TextButton")
SpintSelector.Parent = Sprint
SpintSelector.Text = ""
SpintSelector.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
SpintSelector.Size = UDim2.new(0.267, 0, 0.92, 0)
SpintSelector.Position = UDim2.new(1, 0, 0.027, 0)

local SpintSelectorCorner = Instance.new("UICorner")
SpintSelectorCorner.Parent = SpintSelector

local SpintSelectorCircle = Instance.new("TextButton")
SpintSelectorCircle.Parent = SpintSelector
SpintSelectorCircle.Size = UDim2.new(0.45, 0, 0.818, 0)
SpintSelectorCircle.Position = UDim2.new(0.05, 0, 0.085, 0)
SpintSelectorCircle.BackgroundColor3 = Color3.new(1, 0, 0)
SpintSelectorCircle.Text = ""

local SpintSelectorCircleCorner = Instance.new("UICorner")
SpintSelectorCircleCorner.Parent = SpintSelectorCircle

local TPToolFolder = Instance.new("Folder")
TPToolFolder.Parent = Misc
TPToolFolder.Name = "TPTool"

local TPTool = Instance.new("TextButton")
TPTool.Parent = TPToolFolder
TPTool.BackgroundColor3 = Color3.new(1, 1, 1)
TPTool.BackgroundTransparency = 1
TPTool.Name = "TPTool"
TPTool.Text = "TPTool"
TPTool.Size = UDim2.new(0.755, 0, 0.04, 0)
TPTool.Position = UDim2.new(0, 0, 0.212, 0)
TPTool.FontFace = Font.fromEnum(Enum.Font.FredokaOne)
TPTool.TextColor3 = Color3.new(1, 1, 1)
TPTool.TextScaled = true
TPTool.TextStrokeTransparency = 0

local TPToolSelector = Instance.new("TextButton")
TPToolSelector.Parent = TPTool
TPToolSelector.Text = ""
TPToolSelector.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
TPToolSelector.Size = UDim2.new(0.267, 0, 0.92, 0)
TPToolSelector.Position = UDim2.new(1, 0, 0.027, 0)

local TPToolSelectorCorner = Instance.new("UICorner")
TPToolSelectorCorner.Parent = TPToolSelector

local TPToolSelectorCircle = Instance.new("TextButton")
TPToolSelectorCircle.Parent = TPToolSelector
TPToolSelectorCircle.Size = UDim2.new(0.45, 0, 0.818, 0)
TPToolSelectorCircle.Position = UDim2.new(0.05, 0, 0.085, 0)
TPToolSelectorCircle.BackgroundColor3 = Color3.new(1, 0, 0)
TPToolSelectorCircle.Text = ""

local TPToolSelectorCircleCorner = Instance.new("UICorner")
TPToolSelectorCircleCorner.Parent = TPToolSelectorCircle

local ModMenu = Instance.new("Folder")
ModMenu.Parent = ScrollingFrame
ModMenu.Name = "ModMenu"

local ModMenuTitle = Instance.new("TextLabel")
ModMenuTitle.Text = "ModMenu"
ModMenuTitle.Size = UDim2.new(1, 0, 0.027, 0)
ModMenuTitle.Position = UDim2.new(0, 0, 0, 0)
ModMenuTitle.BackgroundColor3 = Color3.new(0, 0, 0)
ModMenuTitle.BackgroundTransparency = 0.5
ModMenuTitle.Parent = ModMenu
ModMenuTitle.Name = "ModMenu"
ModMenuTitle.FontFace = Font.fromEnum(Enum.Font.FredokaOne)
ModMenuTitle.TextScaled = true
ModMenuTitle.TextColor3 = Color3.new(1, 1, 1)

local BreakInFolder = Instance.new("Folder")
BreakInFolder.Parent = ScrollingFrame
BreakInFolder.Name = "BreakIn"

local BreakInRole = Instance.new("TextButton")
BreakInRole.BackgroundColor3 = Color3.new(1, 1, 1)
BreakInRole.BackgroundTransparency = 1
BreakInRole.Name = "BreakInRole"
BreakInRole.Parent = BreakInFolder
BreakInRole.Text = "Break In (Role)"
BreakInRole.Size = UDim2.new(1, 0, 0.04, 0)
BreakInRole.Position = UDim2.new(0, 0, 0.027, 0)
BreakInRole.FontFace = Font.fromEnum(Enum.Font.FredokaOne)
BreakInRole.TextColor3 = Color3.new(1, 1, 1)
BreakInRole.TextScaled = true
BreakInRole.TextStrokeTransparency = 0

local BreakIn = Instance.new("TextButton")
BreakIn.BackgroundColor3 = Color3.new(1, 1, 1)
BreakIn.BackgroundTransparency = 1
BreakIn.Name = "BreakIn"
BreakIn.Parent = BreakInFolder
BreakIn.Text = "Break In (Story)"
BreakIn.Size = UDim2.new(1, 0, 0.04, 0)
BreakIn.Position = UDim2.new(0, 0, 0.066, 0)
BreakIn.FontFace = Font.fromEnum(Enum.Font.FredokaOne)
BreakIn.TextColor3 = Color3.new(1, 1, 1)
BreakIn.TextScaled = true
BreakIn.TextStrokeTransparency = 0

local DarkDexFolder = Instance.new("Folder")
DarkDexFolder.Parent = ScrollingFrame
DarkDexFolder.Name = "BreakIn"

local DarkDex = Instance.new("TextButton")
DarkDex.BackgroundColor3 = Color3.new(1, 1, 1)
DarkDex.BackgroundTransparency = 1
DarkDex.Name = "DarkDex"
DarkDex.Parent = DarkDexFolder
DarkDex.Text = "DarkDex V4"
DarkDex.Size = UDim2.new(1, 0, 0.04, 0)
DarkDex.Position = UDim2.new(0, 0, 0.106, 0)
DarkDex.FontFace = Font.fromEnum(Enum.Font.FredokaOne)
DarkDex.TextColor3 = Color3.new(1, 1, 1)
DarkDex.TextScaled = true
DarkDex.TextStrokeTransparency = 0

local MurderMysteryFolder = Instance.new("Folder")
MurderMysteryFolder.Parent = ScrollingFrame
MurderMysteryFolder.Name = "BreakIn"

local MurderMystery = Instance.new("TextButton")
MurderMystery.BackgroundColor3 = Color3.new(1, 1, 1)
MurderMystery.BackgroundTransparency = 1
MurderMystery.Name = "MurderMystery"
MurderMystery.Parent = MurderMysteryFolder
MurderMystery.Text = "Murder Mystery 2"
MurderMystery.Size = UDim2.new(1, 0, 0.04, 0)
MurderMystery.Position = UDim2.new(0, 0, 0.144, 0)
MurderMystery.FontFace = Font.fromEnum(Enum.Font.FredokaOne)
MurderMystery.TextColor3 = Color3.new(1, 1, 1)
MurderMystery.TextScaled = true
MurderMystery.TextStrokeTransparency = 0

function InfiniteJumpClick()
	if InfiniteJumpOn then
		InfiniteJumpOn = false
		TweenService:Create(InfiniteJumpSelectorCircle, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {Position = UDim2.new(0.05, 0, 0.085, 0)}):Play()
		TweenService:Create(InfiniteJumpSelectorCircle, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.new(1, 0, 0)}):Play()
	else
		InfiniteJumpOn = true
		TweenService:Create(InfiniteJumpSelectorCircle, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {Position = UDim2.new(0.5, 0, 0.085, 0)}):Play()
		TweenService:Create(InfiniteJumpSelectorCircle, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.new(0, 1, 0)}):Play()
	end
end

function ESPClick()
	if ESPOn then
		ESPOn = false
		TweenService:Create(ESPSelectorCircle, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {Position = UDim2.new(0.05, 0, 0.085, 0)}):Play()
		TweenService:Create(ESPSelectorCircle, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.new(1, 0, 0)}):Play()
	else
		ESPOn = true
		TweenService:Create(ESPSelectorCircle, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {Position = UDim2.new(0.5, 0, 0.085, 0)}):Play()
		TweenService:Create(ESPSelectorCircle, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.new(0, 1, 0)}):Play()

		while true do
			if ESPOn then
				for i, v in pairs (game:GetService("Players"):GetPlayers()) do
					if v ~= Player then
						local Char = v.Character
						local BodyColor = Char:FindFirstChildOfClass("BodyColors")
						BodyColor.HeadColor3 = Color3.new(1, 0, 0)
						BodyColor.LeftArmColor3 = Color3.new(1, 1, 0)
						BodyColor.LeftLegColor3 = Color3.new(1, 1, 0)
						BodyColor.RightArmColor3 = Color3.new(1, 1, 0)
						BodyColor.RightLegColor3 = Color3.new(1, 1, 0)
						BodyColor.TorsoColor3 = Color3.new(1, 1, 0)

						if Char:FindFirstChildOfClass("Shirt") then
							Char:FindFirstChildOfClass("Shirt"):Destroy()
						end
						if Char:FindFirstChildOfClass("Pants") then
							Char:FindFirstChildOfClass("Pants"):Destroy()
						end
						if Char:FindFirstChildOfClass("ShirtGraphic") then
							Char:FindFirstChildOfClass("ShirtGraphic"):Destroy()
						end
						if Char:FindFirstChildOfClass("Accessory") then
							Char:FindFirstChildOfClass("Accessory"):Destroy()
						end
						if Char:FindFirstChild("Head"):FindFirstChildOfClass("Decal") then
							Char:FindFirstChild("Head"):FindFirstChildOfClass("Decal"):Destroy()
						end

						if Char:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R15 then
							Char:FindFirstChild("Head").Material = Enum.Material.Neon
							Char:FindFirstChild("LeftFoot").Material = Enum.Material.Neon
							Char:FindFirstChild("LeftHand").Material = Enum.Material.Neon
							Char:FindFirstChild("LeftLowerArm").Material = Enum.Material.Neon
							Char:FindFirstChild("LeftLowerLeg").Material = Enum.Material.Neon
							Char:FindFirstChild("LeftUpperArm").Material = Enum.Material.Neon
							Char:FindFirstChild("LeftUpperLeg").Material = Enum.Material.Neon
							Char:FindFirstChild("LowerTorso").Material = Enum.Material.Neon
							Char:FindFirstChild("RightFoot").Material = Enum.Material.Neon
							Char:FindFirstChild("RightHand").Material = Enum.Material.Neon
							Char:FindFirstChild("RightLowerArm").Material = Enum.Material.Neon
							Char:FindFirstChild("RightLowerLeg").Material = Enum.Material.Neon
							Char:FindFirstChild("RightUpperArm").Material = Enum.Material.Neon
							Char:FindFirstChild("RightUpperLeg").Material = Enum.Material.Neon
							Char:FindFirstChild("UpperTorso").Material = Enum.Material.Neon
						else
							Char:FindFirstChild("Head").Material = Enum.Material.Neon
							Char:FindFirstChild("Left Arm").Material = Enum.Material.Neon
							Char:FindFirstChild("Left Leg").Material = Enum.Material.Neon
							Char:FindFirstChild("Right Arm").Material = Enum.Material.Neon
							Char:FindFirstChild("Right Leg").Material = Enum.Material.Neon
							Char:FindFirstChild("Torso").Material = Enum.Material.Neon
						end
					end
				end
				wait(0.5)
			end
		end
	end
end

function SprintClick()
	if SprintOn then
		SprintOn = false
		TweenService:Create(SpintSelectorCircle, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {Position = UDim2.new(0.05, 0, 0.085, 0)}):Play()
		TweenService:Create(SpintSelectorCircle, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.new(1, 0, 0)}):Play()
	else
		SprintOn = true
		TweenService:Create(SpintSelectorCircle, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {Position = UDim2.new(0.5, 0, 0.085, 0)}):Play()
		TweenService:Create(SpintSelectorCircle, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.new(0, 1, 0)}):Play()
	end
end

function OOFClick()
	if OFFOn then
		OFFOn = false
		TweenService:Create(OOFSelectorCircle, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {Position = UDim2.new(0.05, 0, 0.085, 0)}):Play()
		TweenService:Create(OOFSelectorCircle, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.new(1, 0, 0)}):Play()
		Player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Died").SoundId = "rbxasset://sounds/uuhhh.mp3"
	else
		OFFOn = true
		TweenService:Create(OOFSelectorCircle, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {Position = UDim2.new(0.5, 0, 0.085, 0)}):Play()
		TweenService:Create(OOFSelectorCircle, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.new(0, 1, 0)}):Play()
		Player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Died").SoundId = "rbxassetid://958257111"
	end
end

function TPToolClick()
	if SprintOn then
		SprintOn = false
		TweenService:Create(TPToolSelectorCircle, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {Position = UDim2.new(0.05, 0, 0.085, 0)}):Play()
		TweenService:Create(TPToolSelectorCircle, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.new(1, 0, 0)}):Play()
		if Player.Backpack:FindFirstChild("TP Tool") then
			Player.Backpack:FindFirstChild("TP Tool"):Destroy()
		end
		if Player.Character:FindFirstChild("TP Tool") then
			Player.Character:FindFirstChild("TP Tool"):Destroy()
		end
	else
		SprintOn = true
		TweenService:Create(TPToolSelectorCircle, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {Position = UDim2.new(0.5, 0, 0.085, 0)}):Play()
		TweenService:Create(TPToolSelectorCircle, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.new(0, 1, 0)}):Play()
		local tool = Instance.new("Tool")
		tool.Parent = Player.Backpack
		tool.RequiresHandle = false
		tool.Name = "TP Tool"

		tool.Activated:connect(function()
			local pos = Mouse.Hit + Vector3.new(0, 2.5, 0)
			pos = CFrame.new(pos.X, pos.Y, pos.Z)
			Player.Character.HumanoidRootPart.CFrame = pos
		end)
	end
end

InfiniteJump.MouseButton1Down:Connect(InfiniteJumpClick)
InfiniteJumpSelector.MouseButton1Down:Connect(InfiniteJumpClick)
InfiniteJumpSelectorCircle.MouseButton1Down:Connect(InfiniteJumpClick)

ESP.MouseButton1Down:Connect(ESPClick)
ESPSelector.MouseButton1Down:Connect(ESPClick)
ESPSelectorCircle.MouseButton1Down:Connect(ESPClick)

OOF.MouseButton1Down:Connect(OOFClick)
OOFSelector.MouseButton1Down:Connect(OOFClick)
OOFSelectorCircle.MouseButton1Down:Connect(OOFClick)

Sprint.MouseButton1Down:Connect(SprintClick)
SpintSelector.MouseButton1Down:Connect(SprintClick)
SpintSelectorCircle.MouseButton1Down:Connect(SprintClick)

TPTool.MouseButton1Down:Connect(TPToolClick)
TPToolSelector.MouseButton1Down:Connect(TPToolClick)
TPToolSelectorCircle.MouseButton1Down:Connect(TPToolClick)

BreakInRole.MouseButton1Down:Connect(function()
	if ScreenGui:FindFirstChild("Role Changer") then
		ScreenGui:FindFirstChild("Role Changer"):Destroy()
	else
		loadstring(game:HttpGet(URL.. 'Break%20In%20(Role)'))()
	end
end)

BreakIn.MouseButton1Down:Connect(function()
	if ScreenGui:FindFirstChild("Break In (Story)") then
		ScreenGui:FindFirstChild("Break In (Story)"):Destroy()
	else
		loadstring(game:HttpGet(URL.. 'Break%20In%20%20(Story)'))()
	end
end)

DarkDex.MouseButton1Down:Connect(function()
	if Player.PlayerGui:FindFirstChild("Dex") then
		Player.PlayerGui:FindFirstChild("Dex"):Destroy()
	else
		loadstring(game:HttpGet(URL.. 'DarkDex%20V4'))()
	end
end)

MurderMystery.MouseButton1Down:Connect(function()
	if Player.PlayerGui:FindFirstChild("") then
	else
		loadstring(game:HttpGet("https://raw.githubusercontent.com/vwSaraa/Scripts/main/Murder%20Mystery%202%20v4.lua"))()
	end
end)

Mouse.KeyDown:connect(function(key)
	if InfiniteJumpOn then
		if key:byte() == 32 then
			local Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid:ChangeState("Jumping")
			wait(0.1)
			Humanoid:ChangeState("Seated")
		end
	end	
	if SprintOn then
		if key:byte() == 48 then
			running = true
			local keyConnection = Mouse.KeyUp:connect(function(key)
				if string.byte(key) == 48 then
					running = false
				end
			end)
			for i = 1,5 do
				game.Workspace.CurrentCamera.FieldOfView = (70+(i*2))
				wait()
			end
			Player.Character.Humanoid.WalkSpeed = Player.Character.Humanoid.WalkSpeed * 2
			SpeedTextBox.Text = Player.Character.Humanoid.WalkSpeed
			repeat wait () until running == false
			keyConnection:disconnect()
			Player.Character.Humanoid.WalkSpeed = Player.Character.Humanoid.WalkSpeed / 2
			SpeedTextBox.Text = Player.Character.Humanoid.WalkSpeed
			for i = 1,5 do
				game.Workspace.CurrentCamera.FieldOfView = (80-(i*2))
				wait()
			end
		end
	end
	if key:byte() == 99 then
		if Frame.Visible then
			Frame.Visible = false
		else
			Frame.Visible = true
		end
	end
end)

SpeedTextBox.InputEnded:Connect(function()
	if not running then
		Player.Character.Humanoid.WalkSpeed = SpeedTextBox.Text
	end
end)

JumpPower.MouseButton1Down:Connect(function()
	Player.Character.Humanoid.JumpPower = JumpPowerTextBox.Text
	Player.Character.Humanoid.UseJumpPower = true
end)
