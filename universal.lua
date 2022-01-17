local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()
local Window = Flux:Window("IoIhub", "Universal", Color3.fromRGB(255, 110, 48), Enum.KeyCode.N)
local mouse = game.Players.LocalPlayer:GetMouse()
local uis = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local function zeroGrav(part)
	if part:FindFirstChild("BodyForce") then return end
	local temp = Instance.new("BodyForce")
	temp.Force = part:GetMass() * Vector3.new(0,workspace.Gravity,0)
	temp.Parent = part
end

function round(n)
	return (n + 0.5) - (n + 0.5) % 1
end

local Tab1 = Window:Tab("General", "http://www.roblox.com/asset/?id=6023426915")
Tab1:Label("General tools (work with most games)")
Tab1:Button("Infinite Yield", "Load in Infinite Yield.", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
Tab1:Button("Gravity gun", "Gives you a gravity gun that can move unanchored objects.", function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/TtYhk6MR'),true))()
end)
Tab1:Button("Remove IoIhub", "Removes IoIhub from the game.", function()
	game:GetService("CoreGui").FluxLib:Destroy()
end)
