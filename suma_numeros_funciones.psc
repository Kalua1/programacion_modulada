Funcion cantidad <- LeerCantidad
	Definir cantidad Como Entero
	Escribir "¿Cuántos números desea ingresar?: "
	Leer cantidad
FinFuncion


Funcion numero <- LeerNumero(i)
	Definir numero Como Real
	Definir valido Como Logico
	
	Repetir
		valido <- Verdadero
		Escribir "Ingrese el número ", i, ": "
		Leer numero
		
		Si numero < 0 Entonces
			Escribir "Error: el número no puede ser negativo. Intente de nuevo."
			valido <- Falso
		FinSi
	Hasta Que valido = Verdadero
FinFuncion


Funcion suma <- CalcularSuma(n)
	Definir i Como Entero
	Definir suma, numero Como Real
	
	suma <- 0
	Para i <- 1 Hasta n Con Paso 1 Hacer
		numero <- LeerNumero(i)
		suma <- suma + numero
	FinPara
FinFuncion

Algoritmo SumaListaNumeros_Funciones
	Definir n, resultado Como Entero
	
	n <- LeerCantidad
	
	resultado <- CalcularSuma(n)
	
	Escribir "La suma de todos los números ingresados es: ", resultado
FinAlgoritmo
