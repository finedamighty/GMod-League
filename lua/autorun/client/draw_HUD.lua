hook.Add( "Think", "mew_world_tip", function()
	if LocalPlayer() != nil then
		local ply = LocalPlayer()
		local tr = ply:GetEyeTrace()
		local pos = tr.HitPos
		local ent = tr.Entity
		if ent.isMew == true then -- is it mews?
			local txt = ent:GetNWString("mew_n_data") -- yes it is!
			if txt != "mew_no_hint" then
				AddWorldTip( nil, txt, nil, pos, ent )
			else end
		else end
	else end
end)