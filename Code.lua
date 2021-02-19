loadstring(game:HttpGet('https://raw.githubusercontent.com/dskny/Blocfrut/main/TP'))()
game:GetService("Players").LocalPlayer["PlayerGui"].Main:WaitForChild("ChooseTeam")
local args = {
    [1] = "SetTeam",
    [2] = "Pirates"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid")
local function IsFruitFound(Name)
  for _,v in next, game:GetService("Workspace"):GetChildren() do
    if v:IsA("Tool") and v.Name == Name then
      return true
    end
  end
  return false
end
