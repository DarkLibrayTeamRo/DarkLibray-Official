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
	Name = "Reset Character",
	Callback = function()
	game.Players.LocalPlayer.Character.Head:Destroy()
      		print("button pressed")
  	end    
})
OrionLib:Init()
