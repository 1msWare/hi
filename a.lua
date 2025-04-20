

local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local updateSubCI = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("UpdateSubCI")
local counterEvent = ReplicatedStorage:WaitForChild("Events"):WaitForChild("Counter")

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end 

    if input.KeyCode == Enum.KeyCode.R then
      
        local args = {
            [1] = 0
        }
        updateSubCI:FireServer(unpack(args))


        counterEvent:FireServer()
    end
end)
