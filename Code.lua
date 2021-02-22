loadstring(game:HttpGet('https://raw.githubusercontent.com/dskny/Blocfrut/main/TP'))()
local function IsFruitFound(Name)
  for _,v in next, game:GetService("Workspace"):GetChildren() do
    if v:IsA("Tool") and v.Name == Name then
      return true
    end
  end
  return false
end
local Found = IsFruitFound(FruitWanted)
if Found == true then
    wait(12)
    local args = {
    [1] = "SetTeam",
    [2] = "Pirates"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid")
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")[FruitWanted].Handle.CFrame
    wait(1.5)
    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
    wait(1)
    for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Option1.MouseButton1Click)) do
        v:Fire()
    end
elseif Found == false then
    Teleport()
end
