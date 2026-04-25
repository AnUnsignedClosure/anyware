local AnyWare = {}

AnyWare.Ranks = {}
AnyWare.RankIdS = {
	[5] = "Founder",
	[4] = "Head Developer",
	[3] = "Developer",
	[2] = "Contributor",
	[1] = "Tester",
	[0.5] = "Paid User",
	[0] = "User",
	[-1] = "Blacklisted",
}

function AnyWare:Load()
	local UserId = game:GetService("Players").LocalPlayer.UserId
	local Rank = AnyWare.Ranks[UserId] or 5
	local RankName = AnyWare.RankIdS[Rank] or "User"
	_G.Rank = RankName
end

return AnyWare
