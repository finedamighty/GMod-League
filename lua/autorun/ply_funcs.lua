local mTab = FindMetaTable("Player") --get ply metatab

function mTab:SetGold(amount)
	self:SetNWFloat("gold", amount)
	print(self:GetNWFloat("gold"))
	print(self:GetNWFloat("exp"))
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
	self:SetXP(exp)
end

function mTab:RemoveXP(amount)
	local exp = self:GetNWFloat("exp") - amount
	self:SetXP(exp)
end

function mTab:GetXP()
	local exp = self:GetNWFloat("exp", amount)
	return exp
end

function mTab:SetMana(amount)
	self:SetNWFloat("mana", amount)
end

function mTab:AddMana(amount)
	local mana = self:GetNWFloat("mana") + amount
	self:SetMana(mana)
end

function mTab:RemoveMana(amount)
	local mana = self:GetNWFloat("mana") - amount
	self:SetMana(mana)
end

function mTab:GetMana()
	local mana = self:GetNWFloat("mana", amount)
	return mana
end
