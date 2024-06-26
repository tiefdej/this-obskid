local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()
local Window = OrionLib:MakeWindow({Name = "tief.st 1,7", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"}) 

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

local Section = Tab:AddSection({
	Name = "Main tief"
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({                                               
	Name = "TIEF CAMLOCK (FIX LAG idk)",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/tiefdej/this-obskid/main/tief%20camlock%20op%20ass%20shid"))()
           print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "TRIP CAMLOCK",
	Callback = function()
	getgenv().Camlock_Settings = {
    Prediction = 0.159,
    AimPart = "HumanoidRootPart",
    Key = "q",
    AutoPrediction = true,
    Notification = true,
    Button = true, --Only for people who play on mobile
    AntiGroundShots = false,
    UnderGroundResolver = false,

    -- DO NOT TOUCH THIS OR IT WILL NOT WORK --
    Credits = "space_0999",
    DiscordServer = "discord.gg/SKhamGzTdn"
}
 
loadstring(game:HttpGet('https://raw.githubusercontent.com/elxocasXD/Trip-Hub/main/Scripts/Cam%20Lock.lua'))()
      		print("button pressed")
  	end    
})

Tab:AddButton({                                               
	Name = "SILENT AIM",
	Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/tiefdej/a6f83d5765489d4797c66fc64e009a9b/raw/efe0cbc0e5abc2a5a944bd17fc573d0eb1ef0753/digar%2520digar%25209128376355e"))()
           print("button pressed")
  	end    
})

Tab:AddButton({                                               
	Name = "TABLET/IPAD SILENT AIM",
	Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/tiefdej/9461cbf0187a491568a9644a5d7ac250/raw/100dbe13bca6bb95d517ade4fbddee35b4bc64c3/gistdiga%2520diga%2520dudhdhhdhs%2520TABLETIPAD.txt"))()
           print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "RESOLVER",
	Callback = function()
	local RunService = game:GetService("RunService")

local function zeroOutYVelocity(hrp)
    hrp.Velocity = Vector3.new(hrp.Velocity.X, 0, hrp.Velocity.Z)
    hrp.AssemblyLinearVelocity = Vector3.new(hrp.Velocity.X, 0, hrp.Velocity.Z)
end

local function onPlayerAdded(player)
    player.CharacterAdded:Connect(function(character)
        local hrp = character:WaitForChild("HumanoidRootPart")
        zeroOutYVelocity(hrp)
    end)
end

local function onPlayerRemoving(player)
    player.CharacterAdded:Disconnect()
end

game.Players.PlayerAdded:Connect(onPlayerAdded)
game.Players.PlayerRemoving:Connect(onPlayerRemoving)

RunService.Heartbeat:Connect(function()
    pcall(function()
        for i, player in pairs(game.Players:GetChildren()) do
            if player.Name ~= game.Players.LocalPlayer.Name then
                local hrp = player.Character.HumanoidRootPart
                zeroOutYVelocity(hrp)
            end
        end
    end)
end)
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "SILENT RESOLVER",
	Callback = function()
	-- // aiming version!
local CPlayer = Aiming.Selected
local hrp = CPlayer.Character.HumanoidRootPart
                hrp.Velocity = Vector3.new(hrp.Velocity.X, 0, hrp.Velocity.Y, hrp.Velocity.Z)    
                hrp.AssemblyLinearVelocity = Vector3.new(hrp.Velocity.X, 0, hrp.Velocity.Y, hrp.Velocity.Z)
  	end    
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
local Section = Tab:AddSection({
	Name = "Other"
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "KIRBSWARE ANTI DONT USE ON REAL DA HOOD",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/wenny69420/KirbswareScripts/main/MobileV3'))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "SHIFTLOCK FOR MACRO",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Unknownproootest/Permanent-Shift-Lock-Alt/alt/PermShiftlockAlt'))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "ZOMBIE ANIMATION",
	Callback = function()
	
loadstring(game:HttpGet("https://gist.githubusercontent.com/tiefdej/961e20293b51a9489920f656cd8388f6/raw/6da7eb40919d2afb7567793afe42cfd9341abbc5/gistfile1.txt"))()
              print("button pressed")
           end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

local Tab = Window:MakeTab({
	Name = "Other script",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
local Section = Tab:AddSection({
	Name = "Other scripts"
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "Esp box",
	Callback = function()
        local esp_settings = { 
            textsize = 8,
            colour = 255,255,255
        }
         
        local gui = Instance.new("BillboardGui")
        local esp = Instance.new("TextLabel",gui)
         
         
         
        gui.Name = "Cracked esp";
        gui.ResetOnSpawn = false
        gui.AlwaysOnTop = true;
        gui.LightInfluence = 0;
        gui.Size = UDim2.new(1.75, 0, 1.75, 0);
        esp.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        esp.Text = ""
        esp.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001);
        esp.BorderSizePixel = 4;
        esp.BorderColor3 = Color3.new(esp_settings.colour)
        esp.BorderSizePixel = 0
        esp.Font = "GothamSemibold"
        esp.TextSize = esp_settings.textsize
        esp.TextColor3 = Color3.fromRGB(esp_settings.colour) -- text colour
         
        game:GetService("RunService").RenderStepped:Connect(function()
            for i,v in pairs (game:GetService("Players"):GetPlayers()) do
                if v ~= game:GetService("Players").LocalPlayer and v.Character.Head:FindFirstChild("Cracked esp")==nil  then
                    esp.Text = "{"..v.Name.."}"
                    gui:Clone().Parent = v.Character.Head
            end
        end
        end)
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "Tp walk",
	Callback = function()
	-- Tpwalk V4 [ BETA ]
loadstring(game:HttpGet("https://raw.githubusercontent.com/TheRealXORA/Roblox-Scripts/main/Tpwalk%20V4%20%5B%20BETA%20%5D.lua", true))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "KEY TOOL /e key (the key u want) ",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/r1FH/Modified-Mobile-Q-Tool/main/Modified%20Mobile%20Q%20Tool.lua", true))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "ANTI LAG",
	Callback = function()
	local ToDisable = {
	Textures = true,
	VisualEffects = true,
	Parts = true,
	Particles = true,
	Sky = true
}
 
local ToEnable = {
	FullBright = false
}
 
local Stuff = {}
 
for _, v in next, game:GetDescendants() do
	if ToDisable.Parts then
		if v:IsA("Part") or v:IsA("Union") or v:IsA("BasePart") then
			v.Material = Enum.Material.SmoothPlastic
			table.insert(Stuff, 1, v)
		end
	end
 
	if ToDisable.Particles then
		if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Explosion") or v:IsA("Sparkles") or v:IsA("Fire") then
			v.Enabled = false
			table.insert(Stuff, 1, v)
		end
	end
 
	if ToDisable.VisualEffects then
		if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("DepthOfFieldEffect") or v:IsA("SunRaysEffect") then
			v.Enabled = false
			table.insert(Stuff, 1, v)
		end
	end
 
	if ToDisable.Textures then
		if v:IsA("Decal") or v:IsA("Texture") then
			v.Texture = ""
			table.insert(Stuff, 1, v)
		end
	end
 
	if ToDisable.Sky then
		if v:IsA("Sky") then
			v.Parent = nil
			table.insert(Stuff, 1, v)
		end
	end
end
 
game:GetService("TestService"):Message("Effects Disabler Script : Successfully disabled "..#Stuff.." assets / effects. Settings :")
 
for i, v in next, ToDisable do
	print(tostring(i)..": "..tostring(v))
end
 
if ToEnable.FullBright then
    local Lighting = game:GetService("Lighting")
 
    Lighting.FogColor = Color3.fromRGB(255, 255, 255)
    Lighting.FogEnd = math.huge
    Lighting.FogStart = math.huge
    Lighting.Ambient = Color3.fromRGB(255, 255, 255)
    Lighting.Brightness = 0
    Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
    Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255)
    Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
    Lighting.Outlines = true
end
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "Speed button",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/tiefdej/this-obskid/main/speed/button/tief"))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "Bladlock Gui",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/sdfesdfsedf/srgtergasdfs/main/wwwwwww", true))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

local Tab = Window:MakeTab({
	Name = "Gui",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
local Section = Tab:AddSection({
	Name = "Gui"
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "Nyula",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/nyulachan/nyula/main/nyula", true))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "keyboard",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "Blazed",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/d75VfZK1"))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "Azure modded",
	Callback = function()
	--[[
############################################################################
#     _     ______   _ ____  _____   __  __  ___  ____  ____  _____ ____   #
#    / \   |__  / | | |  _ \| ____| |  \/  |/ _ \|  _ \|  _ \| ____|  _ \  #
#   / _ \    / /| | | | |_) |  _|   | |\/| | | | | | | | | | |  _| | | | | #
#  / ___ \  / /_| |_| |  _ <| |___  | |  | | |_| | |_| | |_| | |___| |_| | #
# /_/   \_\/____|\___/|_| \_\_____| |_|  |_|\___/|____/|____/|_____|____/  #
#                                                                          #
#  _                   _        _                                          #
# | |__  _   _        / \   ___| |_ _   _ _ __ _ __                        #
# | '_ \| | | |      / _ \ / __| __| | | | '__| '_ \                       #
# | |_) | |_| |     / ___ \ (__| |_| |_| | |  | | | |                      #
# |_.__/ \__, |    /_/   \_\___|\__|\__, |_|  |_| |_|                      #
#        |___/                      |___/                                  #
############################################################################

Actyrn or discord.gg/azuremodded or discord.gg/hUvujCnGMb
Original script credits go to Elegant and Weda

--]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/Actyrn/Scripts/main/AzureModded"))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "Frostbythe",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Totocoems/Frostbyte-leaked/main/Frostbyte%20leaked"))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "Nukermode",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Allvideo1/Nukermode/main/Nukerscript"))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "Chat spam",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/9kJ5m0Ty"))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]


local Tab = Window:MakeTab({
	Name = "credit and update",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
local Section = Tab:AddSection({
	Name = "-- credit"
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "tiefxxzynx",
	Callback = function()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
local Section = Tab:AddSection({
	Name = "-- upd"
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "add smth",
	Callback = function()
      		print("button pressed")
  	end    
})