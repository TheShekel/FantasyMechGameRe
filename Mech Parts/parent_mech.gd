extends Node2D

#Enums
enum Enum_Weapon_Type {
	Sword,
	Spear,
	Launcher,
	RapidFire,
	Canon,
	Spewer
}

#How Many Slots Available
var Slot_Armour: int = 1
var Slot_Core: int = 1
var Slot_Movement: int = 1
var Slot_Scanner: int = 1
var Slot_Shield: int = 1
var Slot_Systems: int = 1
var Slot_Upgrade: int = 1
var Slot_Weapon: int = 1

#Power Management
var Power_Available: int = 1
var Power_Consumed: int = 1
var Power_Max: int = 1

#Health Management
var Health_Core: int = 1
var Health_Core_Max: int = 1
var Health_Movement: Array[int] = []
var Health_Movement_Max: Array[int] = []
var Health_Scanner: int = 1
var Health_Scanner_Max: int = 1
var Health_Shield: int = 1
var Health_Shield_Max: int = 1
var Health_Weapon: Array[int] = []
var Health_Weapon_Max: Array[int] = []

#Armour Management
var Armour_Core : int = 1
var Armour_Core_Max : int = 1

#Special Ammo Mangement
var Ammo_Special : int = 1

#To Hit Management
var ToHitBaseIncrease : int = 1

#Internal Weapon Upgrade Management
var Upgrade_Level_Sword : int = 1
var Upgrade_Level_Spear : int = 1
var Upgrade_Level_Launcher : int = 1
var Upgrade_Level_RapidFire : int = 1
var Upgrade_Level_Canon : int = 1
var Upgrade_Level_Spewer : int = 1

#Weapon Systems
@onready var weapon_left: Node2D = $Weapon_Left
@onready var weapon_right: Node2D = $Weapon_Right

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Hello there!")
	WeaponTypeUpgrade(Enum_Weapon_Type.Sword)

#When a Weapon Type is upgraded, this function is called
func WeaponTypeUpgrade(Weapon_Type = Enum_Weapon_Type):
	match Enum_Weapon_Type:
		Weapon_Type.Sword:
			Upgrade_Level_Sword += 1
			$Weapon_Left.SwordUpgrade(Upgrade_Level_Sword)
			$Weapon_Right.SwordUpgrade(Upgrade_Level_Sword)
			print("Sword has been Upgraded")
		Weapon_Type.Spear:
			print("Spear")
		Weapon_Type.Launcher:
			print("Launcher")
		Weapon_Type.RapidFire:
			print("RapidFire")
		Weapon_Type.Canon:
			print("Canon")
		Weapon_Type.Launcher:
			print("Spewer")
