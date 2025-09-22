Funcion temperatura <- obtener_temperatura
    Definir temperatura Como Real
    Escribir "Ingrese la temperatura actual en °C: "
    Leer temperatura
FinFuncion

Funcion es_temperatura_adecuada(temperatura)
	Si Temperatura >= 18 y Temperatura <= 25
		Escribir "La temperatura es adecuada, " Temperatura "°C"
	SiNo
		Escribir "La temperatura esta fuera del rango deseado (18 °C - 25°C"
	FinSi	
FinFuncion

Algoritmo Sensor_de_temperatura
    Definir Temperatura Como Real
    Definir esAdecuada Como Logico
    
    Escribir "Bienvenido al sensor de temperatura"

    Temperatura <- obtener_temperatura
    es_temperatura_adecuada(Temperatura)
FinAlgoritmo
