extends Node2D

enum Enum_Weapon_Type {
	Sword,
	Spear,
	Launcher,
	RapidFire,
	Canon,
	Spewer
}

#Weapon Stats
var BaseHitChancePerAttack : int = 20
var NumberOfAttacks : int = 1
var DamagePerHit : int = 1
var Consumes_Ammo_Special : bool = false
var RangeOfWeapon : int = 1
var RechargeTime : int = 1
var RechargeTimeHalved : bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("filler")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func SwordUpgrade(Sword_Upgrade_Level):
	if Sword_Upgrade_Level <= 5:
		BaseHitChancePerAttack = ((Sword_Upgrade_Level - 1) * 5) - BaseHitChancePerAttack
		NumberOfAttacks = (Sword_Upgrade_Level + 1) / 2
		DamagePerHit += 1
		BaseHitChancePerAttack = (Sword_Upgrade_Level * 5) + BaseHitChancePerAttack
		if Sword_Upgrade_Level == 5:
			Consumes_Ammo_Special = false

func SpearUpgrade(Spear_Upgrade_Level):
	if Spear_Upgrade_Level <= 5:
		BaseHitChancePerAttack = ((Spear_Upgrade_Level - 1) * 4) - BaseHitChancePerAttack
		NumberOfAttacks = Spear_Upgrade_Level / 2
		DamagePerHit += 1
		BaseHitChancePerAttack = (Spear_Upgrade_Level * 4) + BaseHitChancePerAttack
		RangeOfWeapon = (RangeOfWeapon + 1) / 2
		if Spear_Upgrade_Level == 5:
			Consumes_Ammo_Special = false

func LauncherUpgrade(Launcher_Upgrade_Level):
	if Launcher_Upgrade_Level <= 5:
		BaseHitChancePerAttack = ((Launcher_Upgrade_Level - 1) * 5) - BaseHitChancePerAttack
		DamagePerHit += 2
		BaseHitChancePerAttack = (Launcher_Upgrade_Level * 5) + BaseHitChancePerAttack
		if Launcher_Upgrade_Level == 3 && RechargeTimeHalved != true:
			RechargeTime = RechargeTime / 2
			RechargeTimeHalved = true
		elif Launcher_Upgrade_Level == 5 && RechargeTimeHalved == true:
			NumberOfAttacks = NumberOfAttacks * 2
			Consumes_Ammo_Special = false

func RapidFireUpgrade(RapidFire_Upgrade_Level):
	if RapidFire_Upgrade_Level <= 5:
		BaseHitChancePerAttack = ((RapidFire_Upgrade_Level - 1) * 3) - BaseHitChancePerAttack
		NumberOfAttacks += 1
		BaseHitChancePerAttack = (RapidFire_Upgrade_Level * 3) + BaseHitChancePerAttack
		if RapidFire_Upgrade_Level == 3:
			NumberOfAttacks = NumberOfAttacks * 2
		elif RapidFire_Upgrade_Level == 5:
			NumberOfAttacks = NumberOfAttacks * 2
			RechargeTime = RechargeTime / 2
			RechargeTimeHalved = true
			Consumes_Ammo_Special = false
