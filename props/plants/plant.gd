class_name Plant extends Node2D

@onready var hitBox: HitBox = $HitBox

func _ready() -> void:
	hitBox.damaged.connect(take_damage)

func take_damage(hurt_box: HurtBox) -> void:
	print("Plant kena damage:", hurt_box.damage)
	queue_free() # atau kurangi HP dulu kalau mau
