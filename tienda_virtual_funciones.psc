Funcion precio <- AgregarProducto(productos, precios, i)
	Definir producto Como Cadena
	Definir precio Como Real
	
	Escribir "Ingrese el nombre del producto ", i, ": "
	Leer producto
	
	Escribir "Ingrese el precio del producto ", i, ": "
	Leer precio
	
	productos[i] <- producto
	precios[i] <- precio
FinFuncion


Funcion opcion <- LeerOpcion
	Definir opcion Como Entero
	Escribir "¿Desea agregar otro producto? (1=Sí / 0=No):"
	Leer opcion
FinFuncion


Funcion  MostrarResumen(productos, precios, totalProductos, total)
	Definir j Como Entero
	Escribir "Resumen de la compra"
	Para j <- 1 Hasta totalProductos Con Paso 1 Hacer
		Escribir "Producto ", j, ": ", productos[j], " - $", precios[j]
	FinPara
	Escribir "Total a pagar: $", total
FinFuncion



Algoritmo TiendaVirtual_Funciones
	Definir productos, precios Como Cadena
	Definir total Como Real
	Definir opcion, i Como Entero
	
	Dimension productos[100]
	Dimension precios[100]
	
	total <- 0
	i <- 0
	_opcion <- 1
	
	Mientras _opcion = 1 Hacer
		i <- i + 1
		total <- total + AgregarProducto(productos, precios, i)
		_opcion <- LeerOpcion
	FinMientras
	
	MostrarResumen(productos, precios, i, total)
	
FinAlgoritmo