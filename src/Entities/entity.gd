class_name Entity
extends Sprite2D

var grid_position: Vector2i:
    set(value):
        grid_position = value
        position = Grid.grid_to_world(grid_position)

func _init(start_position: Vector2i, entity_definition: EntityDefinition) -> void:
    var label = Sprite.new(entity_definition.sprite)
    add_child(label)
    centered = false
    grid_position = start_position
    modulate = entity_definition.color

func move(move_offset: Vector2i) -> void:
    grid_position += move_offset

func random_move() -> void:
    var movement = randi() % 4
    if movement == 0:
        grid_position += Vector2i.UP
    elif movement == 1:
        grid_position += Vector2i.DOWN
    elif movement == 2:
        grid_position += Vector2i.LEFT
    else:
        grid_position += Vector2i.RIGHT