extends Node2D


func _ready() -> void:
	pass


func _process(delta: float) -> void:
	pass


func _on_danger_area_body_entered(body: Node2D) -> void:
	if body == $Background/Projectile:
		body.velocity = Vector2.ZERO
		body.respawn(Vector2(150, 150))


func _on_tunnel_1_body_entered(body: Node2D) -> void:
	if body == $Background/Projectile:
		body.velocity = Vector2.ZERO
		body.respawn($Tunnel1.transport_to)
