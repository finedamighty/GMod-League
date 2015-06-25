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
	
	self.packData = {}
	self:setPackData(0, "mew_no_hint")
	
	self:AddHint(self.packData[0])

	------testing------
	self.count = 1
end

function ENT:SpawnFunction(p,t) -- override
	if (not t.Hit) then return end
	local ent = ents.Create("base_mew")
	ent:SetPos(t.HitPos+Vector(0,0,90))
	ent:Spawn()
	
	return ent
end

function ENT:Think() -- override
	self:AddHint(self.packData[0]) --updates every think
end

function ENT:Use() -- override
	self.count = self.count + 1
	self.packData[0] = tostring("Kurwa! " .. self.count)
	
	print (self.packData[0])
end

function ENT:setPackData(id, val) -- sets packing data one by one
	self.packData[id] = val
end

function ENT:setPackDataTable(tab) -- sets another table as data table
	self.packData = tab
end

function ENT:AddHint(txt) -- do not override
	self:SetNWString("mew_n_data", txt)
end