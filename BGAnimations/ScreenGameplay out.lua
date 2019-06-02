-- loop through all available human players
for player in ivalues(GAMESTATE:GetHumanPlayers()) do
	-- if any of them passed, do a slow fadeout
	if not STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetFailed() then
		return Def.Quad{
			InitCommand=function(self) self:FullScreen():diffuse(0,0,0,0) end,
			OnCommand=function(self) self:sleep(1):linear(2):diffusealpha(1) end
		}
	end
	-- do a fast fadeout
	return Def.Quad{
		InitCommand=function(self) self:FullScreen():diffuse(0,0,0,0) end,
		OnCommand=function(self) self:sleep(1):linear(1):diffusealpha(1) end
	}
end

