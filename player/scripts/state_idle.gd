class_name State_Idle extends State
@onready var Walk: State = $"../Walk"
@onready var attack: State = $"../Attack"

func Enter() -> void:
	player.UpdateAnimation("idle")
	pass

func  Exit() -> void:
	pass

func  Process(_delte: float) -> State:
	if player.direction != Vector2.ZERO:
		return Walk
	player.velocity = Vector2.ZERO
	return null

func Physics(_delte: float) -> State:
	return null

func HandleInput(_event: InputEvent) -> State:
	if _event.is_action_pressed("attack"):
		return attack
	return null
