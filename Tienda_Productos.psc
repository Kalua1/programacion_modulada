Funcion tipo <- LeerTipo
    Definir tipo Como Caracter
    Escribir "Ingrese el tipo de producto (A = Alimentos, V = Vestimenta, E = Electrónicos):"
    Leer tipo
FinFuncion

Funcion cantidad <- LeerCantidad
    Definir cantidad Como Entero
    Repetir
        Escribir "Ingrese la cantidad de unidades:"
        Leer cantidad
        Si cantidad <= 0 Entonces
            Escribir "La cantidad debe ser mayor que 0. Intente de nuevo."
        FinSi
    Hasta Que cantidad > 0
FinFuncion

Funcion subtotal <- CalcularSubtotal(tipo, cantidad, precioA, precioV, precioE)
    Definir subtotal Como Real
    Segun tipo Hacer
        "A":
            subtotal <- precioA * cantidad
        "V":
            subtotal <- precioV * cantidad
        "E":
            subtotal <- precioE * cantidad
    FinSegun
FinFuncion

Funcion descuento <- CalcularDescuento(tipo, subtotal)
    Definir descuento Como Real
    Segun tipo Hacer
        "A":
            descuento <- subtotal * 0.10
        "V":
            descuento <- subtotal * 0.05
        "E":
            descuento <- 0
    FinSegun
FinFuncion

SubAlgoritmo MostrarFactura(subtotal, descuento)
    Definir total Como Real
    total <- subtotal - descuento
    Escribir "Costo sin descuento: ", subtotal
    Escribir "Descuento aplicado: ", descuento
    Escribir "Costo total a pagar: ", total
FinSubAlgoritmo

Algoritmo Tienda_Productos_Funciones
    Definir tipo Como Caracter
    Definir cantidad Como Entero
    Definir subtotal, descuento Como Real
    Definir precioA, precioV, precioE Como Real
	
    precioA <- 5000
    precioV <- 10000
    precioE <- 20000
	
    tipo <- LeerTipo
    cantidad <- LeerCantidad
    subtotal <- CalcularSubtotal(tipo, cantidad, precioA, precioV, precioE)
    descuento <- CalcularDescuento(tipo, subtotal)
    MostrarFactura(subtotal, descuento)
FinAlgoritmo
