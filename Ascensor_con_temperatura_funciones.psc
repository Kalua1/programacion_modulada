Funcion temperatura <- obtener_temperatura
    Definir temperatura Como Real
    Escribir "Ingrese la temperatura actual en °C: "
    Leer temperatura
	Si Temperatura >= 18 y Temperatura <= 25
		Escribir "La temperatura es adecuada, " Temperatura "°C"
	SiNo
		Escribir "La temperatura esta fuera del rango deseado (18 °C - 25°C)"
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

Algoritmo Ascensor_con_temperatura_funciones
	temperatura <- obtener_temperatura
	mover_ascensor(piso, piso_actual)
FinAlgoritmo
	