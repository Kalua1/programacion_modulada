Funcion venta <- RegistrarVenta(num, total)
	Definir producto, venta Como Cadena
	Definir precio Como Real
	Escribir "Ingrese el nombre del producto vendido:"
	Leer producto
	Escribir "Ingrese el precio del producto:"
	Leer precio
	venta <- ConvertirATexto(num) + ". " + producto + " - $" + ConvertirATexto(precio)
FinFuncion


Funcion opcion <- MostrarMenuContinuar
	Definir opcion Como Entero
	Escribir "¿Desea registrar otra venta? (1 = SI, 0 = NO):"
	Leer opcion
FinFuncion


Funcion MostrarResumen(resumen, total, cantidad)	
	Escribir "RESUMEN DE VENTAS"
	Escribir resumen
	Escribir "Monto total de ventas: $", total
	Escribir "Total de productos vendidos: ", cantidad
FinFuncion

Algoritmo Registro_Ventas_Funciones
	
	Definir resumen_ventas Como Cadena
	Definir total Como Real
	Definir opcion, contador Como Entero
	
	total <- 0
	contador <- 0
	resumen_ventas <- ""
	_opcion <- 1
	
	Mientras _opcion = 1 Hacer
		contador <- contador + 1
		resumen_ventas <- resumen_ventas + RegistrarVenta(contador, total) + "\n"
		
		Escribir "Ingrese el precio del producto:"
		Definir precio Como Real
		Leer precio
		total <- total + precio
		
		_opcion <- MostrarMenuContinuar
	FinMientras
	
	MostrarResumen(resumen_ventas, total, contador)
	
FinAlgoritmo




