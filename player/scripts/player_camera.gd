class_name PlayerCamer extends Camera2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	LevelManager.tile_map_bounds_changed.connect(update_limit)
	update_limit(LevelManager.curr_tilemap_bounds)
	pass # Replace with function body.

func  update_limit(bounds: Array[Vector2]) -> void:
	if bounds == []:
		return
	limit_left = int(bounds[0].x)
	limit_top = int(bounds[0].y)
	limit_right = int(bounds[1].x)
	limit_bottom = int(bounds[1].y)
	pass
