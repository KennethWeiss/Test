
local LavaBricks = game.Workspace:WaitForChild('Lava Bricks'):GetChildren()

for _, LavaBrick in LavaBricks do
	LavaBrick.Touched:Connect(function(object)
		local potentialPlayer = game.Players:GetPlayerFromCharacter(object.parent)
		
		if potentialPlayer then
			potentialPlayer.Character:BreakJoints()
            wait(2)
            potentialPlayer:LoadCharacter()
		end
	end)
end