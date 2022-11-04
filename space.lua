-- Github Loadstring (Later) --

-- Service Variables --

local UserInputService = game:GetService('UserInputService')

-- Variables (Local Variables) --

local CoreGui = game:GetService('StarterGui').CoreGui
local SpaceUI = CoreGui.SpaceUI
local OpenKey = Enum.KeyCode.RightShift
local CloseKey = Enum.KeyCode.RightControl
local defaultX = SpaceUI.Size.X.Offset
local defaultY = SpaceUI.Size.Y.Offset
local ivalue = UDim2.new(0, 400, 0, 0)
local ipos = UDim2.new(0, 0, 0, 0)
local zvalue = UDim2.new(0, 0, 0, 460)

-- Global Variables ( _G or getgenv:() )

_G.TestingEnabled = true
_G.KeyBinds = true

-- Main Script --

if _G.TestingEnabled == true then
	SpaceUI.Size = zvalue
	if _G.KeyBinds == true then
		UserInputService.InputBegan:Connect(function(input, isTyping)
			if isTyping then
				return
			elseif input.KeyCode == OpenKey then
				SpaceUI:TweenSize(UDim2.new(0, defaultX, 0, defaultY), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 1.68, true)
			elseif input.KeyCode == CloseKey then
				SpaceUI:TweenSize(ivalue, Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 1.35, true)
				task.wait(1.38)
				SpaceUI:TweenSize(ipos, Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0, true)
				SpaceUI:TweenSize(zvalue, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0, true)
			end
		end)
	end
end
