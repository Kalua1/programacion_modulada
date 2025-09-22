Funcion t <- pedir_temperatura
    Definir t Como Real
    Escribir "Ingrese la temperatura actual (°C): "
    Leer t
FinFuncion

Funcion dentro <- verificar_temperatura(t)
    Definir dentro Como Logico
    Si t >= 18 Y t <= 25 Entonces
        dentro <- Verdadero
    SiNo
        dentro <- Falso
    FinSi
FinFuncion

Funcion mostrar_resultado(t, dentro)
    Si dentro = Verdadero Entonces
        Escribir "La temperatura (", t, " °C) es adecuada ?."
    SiNo
        Escribir "La temperatura (", t, " °C) está fuera del rango deseado ?."
    FinSi
FinFuncion

Algoritmo Sensor_temperatura
    Definir temp Como Real
    Definir estado Como Logico
    
    temp <- pedir_temperatura
    
    estado <- verificar_temperatura(temp)
    
    mostrar_resultado(temp, estado)
FinAlgoritmo
