local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "UltraMods", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "Player Menu",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "Speed",
	Callback = function()
	local WalkSpeed = 98
 
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 98
      		print("button pressed")
  	end
})
Tab:AddButton({
	Name = "Infinity Jump",
	Callback = function()
	local infjmp = true
game:GetService("UserInputService").jumpRequest:Connect(function()
    if infjmp then
        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass"Humanoid":ChangeState("Jumping")
    end
end)
      		print("button pressed")
  	end
})
  Tab:AddButton({
	Name = "Esp",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Infinity2346/Tect-Menu/main/Survive%20the%20Killer.txt'))()
      		print("button pressed")
  	end    
})
Tab:AddButton({
	Name = "NoClip",
	Callback = function()
	local Noclip = nil
local Clip = nil

function noclip()
	Clip = false
	local function Nocl()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
		wait(0.21) -- basic optimization
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
	if Noclip then Noclip:Disconnect() end
	Clip = true
end

noclip() -- to toggle noclip() and clip()
      		print("button pressed")
  	end    
})
Tab:AddButton({
	Name = "Reset Character",
	Callback = function()
	game.Players.LocalPlayer.Character.Head:Destroy()
      		print("button pressed")
  	end    
})
OrionLib:Init()
