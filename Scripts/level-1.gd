extends Node2D


func _ready() -> void:
	pass


func _process(delta: float) -> void:
	pass


func _on_danger_area_body_entered(body: Node2D) -> void:
	if body == $Background/Projectile:
		body.respawn(Vector2(150, 160))


func _on_finish_line_body_entered(body: Node2D) -> void:
	if body == $Background/Projectile:
		get_tree().change_scene_to_file("res://Scenes/Levels/level-2.tscn")
