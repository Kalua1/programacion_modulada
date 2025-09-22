Funcion peso <- obtener_peso(limite_peso)
    Definir peso Como Entero
	limite_peso <- 300
    Escribir "Ingrese su peso en kg: "
    Leer peso
	si peso >= limite_peso
		escribir "ERROR, pero maximo permitido 300kg"
	FinSi
FinFuncion

Funcion mover_ascensor(piso, piso_actual)
		Escribir "ingrese el piso al que desea ir (1-10)"
		leer piso
		si piso >= 1 y piso <= 10 Entonces
			Escribir "subiendo al piso deseado"
			Escribir "has llegado al piso " piso
			piso_Actual <- piso
		SiNo
			Escribir "ERROR ? El piso ingresado no es valido"
		FinSi
FinFuncion

Algoritmo Ascensor_con_peso_funciones
    Definir peso, piso, piso_actual, limite_peso Como Entero

    limite_peso <- 300
    piso_actual <- 1
    
    Escribir "Bienvenido al ascensor con control de peso"
    Escribir "Peso máximo permitido: ", limite_peso, "kg"
	
    peso <- obtener_peso(limite_peso)
	mover_ascensor(piso, piso_actual)

   
FinAlgoritmo
