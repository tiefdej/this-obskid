-- Settings
local settings = {
    stickyaim = true, --  sticky aim setting
    Smoothness = {
        Enabled = true,
        Amount = 0.03,
        Shake = false,
        ShakeValue = 0.2,
        ShakeSmoothness = 0.5,
    },
    AdditionalSettings = {
        Enabled = true,
        AutoPrediction = true,
        Type = "Math",
        ping20_30 = 0.12588,
        ping30_40 = 0.11911,
        ping40_50 = 0.12471,
        ping50_60 = 0.13766,
        ping60_70 = 0.13731,
        ping70_80 = 0.147986,
        ping80_90 = 0.1294,
        ping90_100 = 0.1679863,
        ping100_110 = 0.1674978,
        ping110_120 = 0.16749363,
        ping120_130 = 0.175563,
        ping130_140 = 0.1737,
        ping140_150 = 0.178872,
        ping150_160 = 0.1714,
        ping160_170 = 0.1863,
        ping170_180 = 0.1872,
        ping180_190 = 0.1848,
        ping190_200 = 0.1865,
    }
}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Mouse = game.Players.LocalPlayer:GetMouse()
local CamlockState = false
local Prediction = 0.1687963
local HorizontalPrediction = 0.1760773
local VerticalPrediction = 0.160692

function FindNearestEnemy()
    local ClosestDistance, ClosestPlayer = math.huge, nil
    local CenterPosition =
        Vector2.new(
        game:GetService("GuiService"):GetScreenResolution().X / 2,
        game:GetService("GuiService"):GetScreenResolution().Y / 2
    )

    for _, Player in ipairs(game:GetService("Players"):GetPlayers()) do
        if Player ~= LocalPlayer then
            local Character = Player.Character
            if Character and Character:FindFirstChild("HumanoidRootPart") and Character.Humanoid.Health > 0 then
                local Position, IsVisibleOnViewport =
                    game:GetService("Workspace").CurrentCamera:WorldToViewportPoint(Character.HumanoidRootPart.Position)

                if IsVisibleOnViewport then
                    local Distance = (CenterPosition - Vector2.new(Position.X, Position.Y)).Magnitude
                    if Distance < ClosestDistance then
                        ClosestPlayer = Character.HumanoidRootPart
                        ClosestDistance = Distance
                    end
                end
            end
        end
    end

    return ClosestPlayer
end

local enemy = nil

-- Function to aim the camera at the nearest enemy's HumanoidRootPart
RunService.Heartbeat:Connect(
    function()
        if CamlockState == true then
            if enemy then
                local camera = workspace.CurrentCamera
                camera.CFrame = CFrame.new(camera.CFrame.p, enemy.Position + enemy.Velocity * Prediction)

           if settings.Smoothness.Enabled then
                local currentPosition = camera.CFrame.Position
                targetPosition = currentPosition:Lerp(targetPosition, settings.Smoothness.Amount / 10)
            end
            
            if settings.stickyaim then
                -- Sticky aim functionality
                local character = LocalPlayer.Character
                if character then
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    if humanoid then
                        local enemyPosition = enemy.Position + enemy.Velocity * Prediction
                        local direction = (enemyPosition - character.PrimaryPart.Position).unit
                        humanoid:MoveTo(character.PrimaryPart.Position + direction * humanoid.WalkSpeed)
                    end
                end
            end
        end
    end
end)

-- Knock Check --
local function Death(Plr)
    if Plr.Character and Plr.Character:FindFirstChild("BodyEffects") then
        local bodyEffects = Plr.Character.BodyEffects
        local ko = bodyEffects:FindFirstChild("K.O") or bodyEffects:FindFirstChild("KO")
        return ko and ko.Value
    end
    return false
end

local Tief = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Logo = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")

--Properties:

Tief.Name = "Tief"
Tief.Parent = game.CoreGui
Tief.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = Tief
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.133798108, 0, 0.20107238, 0)
Frame.Size = UDim2.new(0, 202, 0, 70)
Frame.Active = true
Frame.Draggable = true

local function TopContainer()
    Frame.Position = UDim2.new(0.5, -Frame.AbsoluteSize.X / 2, 0, -Frame.AbsoluteSize.Y / 2)
end

TopContainer()
Frame:GetPropertyChangedSignal("AbsoluteSize"):Connect(TopContainer)

UICorner.Parent = Frame

Logo.Name = "Logo"
Logo.Parent = Frame
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 5.000
Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0.326732665, 0, 0, 0)
Logo.Size = UDim2.new(0, 70, 0, 70)
Logo.Image = "rbxassetid://7844160136"
Logo.ImageTransparency = 0.200

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 5.000
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0792079195, 0, 0.18571429, 0)
TextButton.Size = UDim2.new(0, 170, 0, 44)
TextButton.Font = Enum.Font.SourceSansSemibold
TextButton.Text = "Tief"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 11.000
TextButton.TextWrapped = true
local state = true
TextButton.MouseButton1Click:Connect(
    function()
        state = not state
        if not state then
            TextButton.Text = "T lock"
            CamlockState = true
            enemy = FindNearestEnemy()
        else
            TextButton.Text = "T unlock"
            CamlockState = false
            enemy = nil
        end
    end
)

UICorner_2.Parent = TextButton

-- Text color changing loop
spawn(function()
    while true do
        for i = 0, 255, 10 do
            wait()
            TextButton.TextColor3 = Color3.new(255/255, i/255, 0/255)
        end
        for i = 255, 0, -10 do
            wait()
            TextButton.TextColor3 = Color3.new(i/255, 255/255, 0/255)
        end
        for i = 0, 255, 10 do
            wait()
            TextButton.TextColor3 = Color3.new(0/255, 255/255, i/255)
        end
        for i = 255, 0, -10 do
            wait()
            TextButton.TextColor3 = Color3.new(0/255, i/255, 255/255)
        end
        for i = 0, 255, 10 do
            wait()
            TextButton.TextColor3 = Color3.new(i/255, 0/255, 255/255)
        end
        for i = 255, 0, -10 do
            wait()
            TextButton.TextColor3 = Color3.new(255/255, 0/255, i/255)
        end
    end
end)

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;
Notify({
    Description = "https://discord.com/invite/gKrH43kPZB";
    Title = "Made by: Pluh / Tief";
    Duration = 5;
});
