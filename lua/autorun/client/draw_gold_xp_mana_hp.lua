hook.Add( "HUDPaint", "glol_hud", function()
	local ply = LocalPlayer()
	draw.RoundedBox(4, 40, ScrH() -  150, 256, 100, Color(200,200,200,255))
	draw.SimpleText("Gold: "..ply:GetGold(), "GLoL", 50, ScrH() - 135, Color(255,0,0,255))
	draw.SimpleText("XP: "..ply:GetXP(), "GLoL", 50, ScrH() - 110, Color(120,153,100,255))
	draw.SimpleText("Mana: "..ply:GetMana(), "GLoL", 50, ScrH() - 85, Color(0,0,255,255))
end)

function def_hud(name)
	for k, v in pairs({"CHudHealth", "CHudBattery"})do
		if name == v then return false end
	end
end
hook.Add("HUDShouldDraw", "hide_def_hud", def_hud)