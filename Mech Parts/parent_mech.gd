extends Node2D

#How Many Slots Available
var Slot_Armour = int(1)
var Slot_Core = int(1)
var Slot_Movement = int(1)
var Slot_Scanner = int(1)
var Slot_Shield = int(1)
var Slot_Systems = int(1)
var Slot_Upgrade = int(1)
var Slot_Weapon = int(1)

#Power Management
var Power_Available = int(1)
var Power_Consumed = int (1)
var Power_Max = int(1)

#Health Management



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label.text = "Hello, world!"
	$Label.modulate = Color.GREEN

func _input(event):
	if event.is_action_pressed("my_action"):
		$Label.modulate = Color.RED
		
	if event.is_action_released("my_action"):
		$Label.modulate = Color.GREEN
