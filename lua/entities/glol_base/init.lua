AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include( "shared.lua" ) 

function ENT:Initialize()

	self:SetModel("models/Combine_Helicopter/helicopter_bomb01.mdl")
	self:SetUseType(SIMPLE_USE)
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)

	local phys = self:GetPhysicsObject()

	if (phys:IsValid()) then
		phys:Wake()
	end
end

function ENT:SpawnFunction(p,t) -- override
	if (not t.Hit) then return end
	local ent = ents.Create("glol_base")
	ent:SetPos(t.HitPos+Vector(0,0,90))
	ent:Spawn()
	
	return ent
end

function ENT:Think()
end

function ENT:Use()
end