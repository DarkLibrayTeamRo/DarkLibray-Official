local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("DarkMods", "DarkTheme")
local Tab = Window:NewTab("Player Menu")
local Section = Tab:NewSection("Player Menu")
Section:NewButton("Walk Speed", "Walk Speed!", function()
local WalkSpeed = 99
 
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 99
    print("Clicked")
end)
Section:NewButton("Infinity Jump", "Infinity Jump Hack!", function()
local infjmp = true
game:GetService("UserInputService").jumpRequest:Connect(function()
    if infjmp then
        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass"Humanoid":ChangeState("Jumping")
    end
end)
    print("Clicked")
end)
Section:NewButton("Esp", "Esp Players!", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Infinity2346/Tect-Menu/main/Survive%20the%20Killer.txt'))()
    print("Clicked")
end)
Section:NewButton("NoClip", "NoClip Hack!", function()
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
    print("Clicked")
end)
