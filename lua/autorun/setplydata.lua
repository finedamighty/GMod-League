local mTab = FindMetaTable("Player") --get ply metatab

function mTab:SetGold(amount)
	self:SetNWFloat("gold", amount)
end

function mTab:AddGold(amount)
	local gold = self:GetNWFloat("gold") + amount
	self:SetGold(gold)
end

function mTab:RemoveGold(amount)
	local gold = self:GetNWFloat("gold") - amount
	self:SetGold(gold)
end

function mTab:GetGold()
	local gold = self:GetNWFloat("gold", amount)
	return gold
end

function mTab:SetXP(amount)
	self:SetNWFloat("exp", amount)
end

function mTab:AddXP(amount)
	local exp = self:GetNWFloat("exp") + amount
	self:SetGold(exp)
end

function mTab:RemoveXP(amount)
	local exp = self:GetNWFloat("exp") - amount
	self:SetGold(exp)
end

function mTab:GetXP()
	local exp = self:GetNWFloat("exp", amount)
	return exp
end
