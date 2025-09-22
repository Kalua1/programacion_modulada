
Funcion temp <- LeerTemperatura
	Definir temp Como Real
	Escribir "Ingrese la temperatura actual:"
	Leer temp
FinFuncion


Funcion valida <- TemperaturaValida(t)
	Definir valida Como Logico
	Si t >= 18 Y t <= 32 Entonces
		valida <- Verdadero
	SiNo
		valida <- Falso
	FinSi
FinFuncion


funcion MostrarResultado(t)
	Escribir "La temperatura ", t, " está dentro del rango permitido (18 - 32)."
FinFuncion



Algoritmo sensorTemperatura_Funciones
	Definir temperatura Como Real
	
	temperatura <- LeerTemperatura
	
	Mientras No TemperaturaValida(temperatura) Hacer
		Escribir "¡¡ALERTA!! La temperatura no se encuentra dentro del rango (18 - 32)"
		Escribir "Por favor valide que la temperatura sea la adecuada"
		temperatura <- LeerTemperatura
	FinMientras
	
	MostrarResultado(temperatura)
	
FinAlgoritmo

