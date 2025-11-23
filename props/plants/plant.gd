class_name Plant extends Node2D

@onready var hitBox: HitBox = $HitBox

func _ready() -> void:
	hitBox.damaged.connect(take_damage)

func take_damage(_hurt_box: HurtBox) -> void:
	print("TAKE DAMAGE")
	queue_free()
