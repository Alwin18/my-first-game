class_name HitBox
extends Area2D

signal Damage(damage: int)

func _ready() -> void:
	pass

func TakeDamage(damage: int) -> void:
	print("HitBox TakeDamage: ", damage)
	Damage.emit(damage)
