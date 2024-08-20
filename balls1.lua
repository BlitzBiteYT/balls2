local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- Function to lock the camera to the player's head
local function LockCameraToHead()
    local player = Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local head = character:WaitForChild("Head")
    local camera = workspace.CurrentCamera
    
    camera.CameraType = Enum.CameraType.Scriptable
    
    RunService.RenderStepped:Connect(function()
        camera.CFrame = head.CFrame * CFrame.new(0, 0, 5) -- Adjust offset as needed
    end)
end

-- Call the function to lock the camera
LockCameraToHead()
