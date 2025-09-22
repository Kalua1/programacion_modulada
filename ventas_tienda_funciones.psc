Funcion subtotal <- RegistrarProducto
	Definir subtotal Como Real
	
	Escribir "Ingrese el nombre del producto ", i, ": "
	Leer producto
	
	Escribir "Ingrese el precio del producto ", producto, ": "
	Leer precio
	
	Escribir "Ingrese la cantidad vendida de ", producto, ": "
	Leer cantidad
	
	subtotal <- precio * cantidad
FinFuncion


Funcion opcion <- LeerOpcion
	Definir opcion Como Entero
	Escribir "¿Desea registrar otro producto? (1=Sí / 0=No): "
	Leer opcion
FinFuncion


Funcion  MostrarResumen(resumen, total, cantidadProductos)
	Escribir "Resumen de Ventas"
	Escribir resumen
	Escribir "Total de productos: ", cantidadProductos
	Escribir "TOTAL DE VENTAS: $", total
FinFuncion


Algoritmo VentasTienda_SinDimension
	Definir producto, resumen Como Cadena
	Definir precio, subtotal, total Como Real
	Definir cantidad, opcion, i Como Entero
	
	total <- 0
	i <- 0
	resumen <- ""
	_opcion <- 1
	
	Mientras _opcion = 1 Hacer
		i <- i + 1
		subtotal <- RegistrarProducto
		total <- total + subtotal
		
		resumen <- resumen + ConvertirATexto(i) + ". " + producto + " | Precio: $" + ConvertirATexto(precio) + " | Cant: " + ConvertirATexto(cantidad) + " | Subtotal: $" + ConvertirATexto(subtotal) + "\n"
		
		_opcion <- LeerOpcion
	FinMientras
	
	MostrarResumen(resumen, total, i)
FinAlgoritmo

