class_name State extends Node


static  var player: Player

func _ready() -> void:
	pass # Replace with function body.

func Enter() -> void:
	pass

func  Exit() -> void:
	pass

func  Process(_delte: float) -> State:
	return null

func Physics(_delte: float) -> State:
	return null

func HandleInput(_event: InputEvent) -> State:
	return null
