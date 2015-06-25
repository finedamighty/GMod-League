local function init(ply)
	ply:SetGold(100)
	ply:SetXP(100)
end

hook.Add("PlayerInitialSpawn", "ply_set_data", init)