# Assim como no Python, os pontos de quebra do GDScript são
# interpretados através da indentação do código, e não de um
# caractere especial (Ponto e vírgula, por exemplo.).

extends Sprite2D

# O @export faz com que uma variável fique acessível dentro da aba
# Inspector/Inspetor do elemento ao qual o script está atrelado.
# Clique no elemento relacionado ao script (No caso atual, é o
# elemento Image.) e abra a aba Inspector/Inspetor deste elemento
# (Geralmente, encontra-se na parte direita da interface do Godot.).

# A variável a seguir, pertence ao escopo global do script.

@export var movement_speed = 250

# Função executada assim que o script é carregado.

func _ready() -> void:
	
	print("Hello, World!\n")

# Função executada a cada atualização de quadro (FPS)
# da interface de usuário.

func _process(delta: float) -> void:
	
	# O parâmetro delta, contém o valor de tempo que o quadro atual
	# leva, no intervalo de um segundo (FPS), para ser executado.
	
	print(delta)
	
	var input = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	# Especificando o eixo que sofrerá mudança:
	
	# position.x += input.x * (movement_speed * delta)
	
	# position.y += input.y * (movement_speed * delta)
	
	# Não especificando o eixo que sofrerá mudança (Ambos mudam.):
	
	position += input * (movement_speed * delta)
