SWEP.PrintName = "BASE WEAPON"
SWEP.Category = "LOL"

SWEP.Author = "MewTheCrazY"
SWEP.Purpose = "base weapon"
SWEP.Instructions = "dunno lol"
SWEP.Slot = 3
SWEP.SlotPos = 3
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = true
SWEP.ViewModel = "models/weapons/v_357.mdl"
SWEP.WorldModel = "models/weapons/w_357.mdl"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 100
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "HelicopterGun"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo	= "none"

function SWEP:Initialize()
	self:SetWeaponHoldType("pistol")

end

function SWEP:EquipAmmo()

end

function SWEP:Deploy()

end

function SWEP:PrimaryAttack()

end