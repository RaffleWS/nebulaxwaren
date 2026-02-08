--// Script Is Down Screen
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

-- Remove old if exists
if PlayerGui:FindFirstChild("ScriptDownUI") then
	PlayerGui.ScriptDownUI:Destroy()
end

-- ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ScriptDownUI"
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = PlayerGui

-- Background
local Background = Instance.new("Frame")
Background.Size = UDim2.fromScale(1, 1)
Background.Position = UDim2.fromScale(0, 0)
Background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Background.BorderSizePixel = 0
Background.Parent = ScreenGui

-- Text
local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.fromScale(1, 0.2)
TextLabel.Position = UDim2.fromScale(0, 0.4)
TextLabel.BackgroundTransparency = 1
TextLabel.Text = "SCRIPT IS DOWN"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Parent = Background

-- Close Button
local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.fromScale(0.2, 0.07)
CloseButton.Position = UDim2.fromScale(0.4, 0.6)
CloseButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
CloseButton.Text = "CLOSE"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextScaled = true
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Parent = Background

-- Button Style
local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 12)
Corner.Parent = CloseButton

-- Button Action
CloseButton.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
end)
