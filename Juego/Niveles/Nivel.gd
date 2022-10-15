#Nivel.gd
class_name Nivel
extends Node2D

## Atributos Export
export var explosion:PackedScene = null

## Metodos
func _ready() -> void:
	conectar_seniales()

## Metodos Custom
func conectar_seniales() -> void:
	Eventos.connect("disparo", self, "_on_disparo")
	Eventos.connect("nave_destruida", self, "_on_nave_destruida")

func _on_disparo(proyectil:Proyectil) -> void:
	add_child(proyectil)

func _on_nave_destruida(posicion: Vector2) ->void:
	var new_explosion:Node2D = explosion.instance()
	new_explosion.global_position = posicion
	add_child(new_explosion)
