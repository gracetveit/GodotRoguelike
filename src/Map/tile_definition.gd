class_name TileDefinition
extends Resource

@export_category("Visuals")
@export var sprite: String
@export_color_no_alpha var color: Color = Color.WHITE
@export var alpha: float = 1

@export_category("Mechanics")
@export var is_walkable: bool = true
@export var is_transparent: bool = true