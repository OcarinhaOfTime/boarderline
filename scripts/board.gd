extends Sprite2D

@export_range(1, 8, 1) var size: int = 4

var sssize: int

func _ready() -> void:
	sssize = texture.get_size().x
	print(sssize)
	print(position)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void: 
	scale = Vector2(size, size) / 2
	material.set_shader_parameter("size", size)

func world2screen(p: Vector2) -> Vector2:
	#p.y *= -1
	p = p - p * .5
	p.y *= -1
	var s = sssize * size / 2
	var o = Vector2(sssize, -sssize) * -.5 * size / 2
	var io = Vector2(s, -s) / 4

	return p * s + o + io
