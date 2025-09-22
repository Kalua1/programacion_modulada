funcion precio <- solicitar_precio
	definir precio como real 
	escribir "Ingrese el precio del producto"
	leer precio
FinFuncion

funcion cantidad <- solicitar_cantidad
	definir cantidad Como Entero
	escribir "Ingrese la cantidad que desea llevar"
	leer cantidad
FinFuncion

funcion subtotal <- calcular_subtotal(precio, cantidad)
	definir subtotal Como Real
	subtotal <- precio * cantidad
FinFuncion

funcion opcion_ <- desea_continuar
	definir opcion Como Caracter
	escribir "¿Desea agregar otro producto? (S/N)"
	leer opcion
FinFuncion

Algoritmo tienda_en_linea_funciones
	definir precio, cantidad, subtotal, total Como Real
	definir continuar Como Caracter
	total <- 0
	
	Escribir "Bienvenido a tiendas ARA, donde la vida no es cara"
	continuar <- "s"
	
	mientras continuar = "s" o continuar = "S"
			precio <- solicitar_precio
			cantidad <- solicitar_cantidad
			subtotal <- calcular_subtotal(precio, cantidad)
			
			total <- total + subtotal
			
			Escribir "Subtotal de este producto:" , subtotal
			escribir "Total acumulado: " , total
			
			continuar <- desea_continuar
		FinMientras
		
		Escribir "Compra finalizada"
		Escribir "El costo total de su compra es: " total
		
FinAlgoritmo
	