class_name State_Walk extends State

@export var move_speed: float = 100.0
@onready var Idle: State = $"../Idle"
@onready var attack: State = $"../Attack"

func Enter() -> void:
	player.UpdateAnimation("walk")
	pass

func  Exit() -> void:
	pass

func  Process(_delte: float) -> State:
	if player.direction == Vector2.ZERO:
		return Idle
	
	player.velocity = player.direction * move_speed
	
	if player.SetDirection():
		player.UpdateAnimation("walk")
	return null

func Physics(_delte: float) -> State:
	return null

func HandleInput(_event: InputEvent) -> State:
	if _event.is_action_pressed("attack"):
		return attack
	return null
