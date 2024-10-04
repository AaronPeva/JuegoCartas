extends TextureRect

# Vida máxima de Diavolo
var max_vida = 100
# Vida actual de Diavolo
var vida_ac	 = max_vida

# Referencia a la barra de vida (ProgressBar)
onready var barra_vida = $BarraVida

func _ready():
	# Configurar la barra de vida para que refleje la vida máxima al iniciar el juego
	barra_vida.max_value = max_vida
	barra_vida.value = vida_actual

# Función para recibir daño
func recibir_dano(cantidad_dano: int):
	vida_actual -= cantidad_dano
	if vida_actual < 0:
		vida_actual = 0
	# Actualiza la barra de vida
	barra_vida.value = vida_actual

	# Puedes añadir aquí alguna lógica cuando Diavolo muera
	if vida_actual == 0:
		print("Diavolo ha muerto")
