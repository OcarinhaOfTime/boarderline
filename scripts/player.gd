extends Node2D

@export var x: int = 0
@export var y: int = 0
@onready var board = get_node("../board") 

@export var offset: Vector2


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var p = board.world2screen(Vector2(x, y))
	position = p + offset