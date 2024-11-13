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
		if Sword_Upgrade_Level == 5:
			Consumes_Ammo_Special = false
