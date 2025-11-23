class_name State_Idle extends State
@onready var Walk: State = $"../Walk"
@onready var attack: State = $"../Attack"

func enter() -> void:
	player.update_animation("idle")
	pass

func exit() -> void:
	pass

func process(_delte: float) -> State:
	if player.direction != Vector2.ZERO:
		return Walk
	player.velocity = Vector2.ZERO
	return null

func physics(_delte: float) -> State:
	return null

func handle_input(_event: InputEvent) -> State:
	if _event.is_action_pressed("attack"):
		return attack
	return null
