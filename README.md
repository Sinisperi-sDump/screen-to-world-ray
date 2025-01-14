# screen-to-world-ray

> Shooting rays from Screen position to 3D World

returns `Dictionary` that contains information about the collision.  
For example:
```gdscript
{
  "position": (6.267622, 0, -5.234176),
  "normal": (0, 1, 0),
  "face_index": -1,
  "collider_id": 33470547287,
  "collider": FloorPlane:<Area3D#33470547287>,
  "shape": 0,
  "rid": RID(4415226380288)
}

```

## screen_position: Vector2

Start position for the ray on screen.  
For example mouse positon:  
```gdscript
var mouse_pos: Vector2 = get_viewport().get_mouse_position()
```

## mask: int

Collision mask for the ray.  
Read more how to construct them [here](https://docs.godotengine.org/en/stable/tutorials/physics/physics_introduction.html#code-example "Godot Docs Physics Introduction").

## node_3d: Node3D

Physics need to know how 3D space is, so passing any `Node3D` will work.

## collide_with_bodies and collide_with_areas

Booleans for checking if you want to collide with bodies and/or areas.
