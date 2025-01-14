func screen_to_world_ray(screen_position: Vector2, mask: int, node_3d: Node3D, collide_with_bodies: bool = true, collide_with_areas: bool = true):
	var space_state = node_3d.get_world_3d().direct_space_state
	var camera: Camera3D = get_tree().root.get_camera_3d()
	var ray_origin: Vector3 = camera.project_ray_origin(screen_position)
	var ray_end: Vector3 = ray_origin + camera.project_ray_normal(screen_position) * 2000
	var ray = PhysicsRayQueryParameters3D.create(ray_origin, ray_end, mask)
	ray.collide_with_areas = collide_with_areas
	ray.collide_with_bodies = collide_with_bodies
	return space_state.intersect_ray(ray)
