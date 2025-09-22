Funcion opcion <- MostrarMenu
	Definir opcion Como Entero
	Escribir " Bienvenido al restaurante "
	Escribir "1. Hamburguesa: 5000"
	Escribir "2. Perro:       2000"
	Escribir "3. Salchipapa:  3000"
	Escribir "4. Finalizar pedido"
	Escribir "Seleccione una opción:"
	Leer opcion
FinFuncion


Funcion precio <- ProcesarPedido(opcion)
	Definir precio Como Real
	
	Segun opcion Hacer
		1:
			Escribir "Agregaste una Hamburguesa al pedido"
			precio <- 5000
		2:
			Escribir "Agregaste un Perro al pedido"
			precio <- 2000
		3:
			Escribir "Agregaste una Salchipapa al pedido"
			precio <- 3000
		4:
			Escribir "Finalizando pedido..."
			precio <- 0
		De Otro Modo:
			Escribir "Opción no válida, intente de nuevo"
			precio <- 0
	FinSegun
FinFuncion


funcion MostrarTotal(total)
	Escribir "El costo total de su pedido es: $", total
	Escribir "Gracias por su compra"
FinFuncion


Algoritmo Menu_comidas_rapidas_funciones
	
	Definir opcion Como Entero
	Definir total Como Real
	
	total <- 0
	
	Repetir
		_opcion <- MostrarMenu
		total <- total + ProcesarPedido(opcion)
	Hasta Que opcion = 4
	
	MostrarTotal(total)
	
FinAlgoritmo
