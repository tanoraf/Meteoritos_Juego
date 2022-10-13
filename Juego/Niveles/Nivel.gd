#Nivel.gd
class_name Nivel
extends Node2D

## Metodos
func _ready() -> void:
	conectar_seniales()

## Metodos Custom
func conectar_seniales() -> void:
	Eventos.connect("disparo", self, "_on_disparo")

func _on_disparo(proyectil:Proyectil) -> void:
	add_child(proyectil)
