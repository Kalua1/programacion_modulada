Funcion MostrarMenu
	Escribir ""
	Escribir "Menú:"
	Escribir "1. Salchipapa = $20000"
	Escribir "2. Hamburguesa = $15000"
	Escribir "3. Perro = $10000"
	Escribir "4. Sandwich = $5000"
FinFuncion

Funcion precio <- ObtenerPrecio(opcion)
	Definir precio Como Real
	Segun opcion Hacer
		"1":
			precio <- 20000
		"2":
			precio <- 15000
		"3":
			precio <- 10000
		"4":
			precio <- 5000
		De Otro Modo:
			Escribir "Opción inválida"
			precio <- 0
	FinSegun
FinFuncion

Funcion totalFinal <- AplicarDescuento(total, metodoPago)
	Definir totalFinal Como Real
	totalFinal <- total
	Segun metodoPago Hacer
		"1":
			totalFinal <- total - (total * 0.10)
		"2":
			totalFinal <- total - (total * 0.05)
		De Otro Modo:
			Escribir "Método no válido, no aplica descuento"
	FinSegun
FinFuncion

Algoritmo Menu_restaurante_funciones
	Definir opcion, metodopago Como Cadena
	Definir total, precio Como Real
	Definir continuar Como Caracter
	
	total <- 0
	continuar <- "S"
	
	Escribir "Bienvenido al restaurante Pollos Hermanos"
	
	Mientras continuar = "S" Hacer
		MostrarMenu
		
		Escribir "Seleccione una opción (1-4): "
		Leer opcion
		
		precio <- ObtenerPrecio(opcion)
		
		total <- total + precio
		
		Escribir "¿Desea agregar otro producto? (S/N): "
		Leer continuar
		continuar <- Mayusculas(continuar)
	FinMientras
	
	Escribir "Métodos de pago:"
	Escribir "1. Efectivo (10% descuento)"
	Escribir "2. Tarjeta de crédito (5% descuento)"
	
	Escribir "Seleccione un método de pago: "
	Leer metodopago
	
	total <- AplicarDescuento(total, metodopago)
	
	Escribir "El valor total a pagar es: $", total
FinAlgoritmo
