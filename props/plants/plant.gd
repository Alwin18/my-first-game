class_name Plant
extends Node2D

@onready var hitBox: HitBox = $HitBox

func _ready() -> void:
	hitBox.Damage.connect(TakeDamage)

func TakeDamage(damage: int) -> void:
	print("Plant kena damage:", damage)
	queue_free() # atau kurangi HP dulu kalau mau
