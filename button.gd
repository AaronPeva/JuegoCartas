extends Button

#signal ProgressBar

var reducirVida = 10;

var vidaEnemigo: ProgressBar

#func (Progress_Bar):
	#pass
	
	
func _pressed() -> void:
	print("antes de restar")
	vidaEnemigo.value -= reducirVida
	if vidaEnemigo.value < 0:
		vidaEnemigo.value = 0 
	print("despues de restar")
