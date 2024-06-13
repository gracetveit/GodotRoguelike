class_name Sprite
extends Label

var fira = preload("res://FiraMono/FiraMonoNerdFontMono-Regular.otf")

func _init(sprite: String) -> void:
    label_settings = LabelSettings.new()
    label_settings.font = fira    
    text = sprite