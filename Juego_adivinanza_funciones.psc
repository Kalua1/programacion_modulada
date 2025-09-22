Funcion n <- generar_numeros_secreto
    Definir n Como Entero
    n <- Aleatorio(1, 100)
FinFuncion

Funcion intento <- pedir_intento
    Definir intento Como Entero
    Escribir "Ingresa tu intento: "
    Leer intento
FinFuncion

Funcion correcto <- verificar_intento(intento, secreto)
    Definir correcto Como Logico
    correcto <- Falso
    
    Si intento > secreto Entonces
        Escribir "El número secreto es MENOR."
    SiNo
        Si intento < secreto Entonces
            Escribir "El número secreto es MAYOR."
        SiNo
            Escribir "?? ¡Felicidades! Adivinaste el número: ", secreto
            correcto <- Verdadero
        FinSi
    FinSi
FinFuncion

Algoritmo Juego_adivinanza_funciones
    Definir numero_secreto, intento Como Entero
    Definir adivinado Como Logico
    

    numero_secreto <- generar_numeros_secreto
    Escribir "?? Bienvenido al juego de adivinanza ??"
    Escribir "He pensado un número entre 1 y 100. ¡Intenta adivinarlo!"
    
    adivinado <- Falso
    Mientras adivinado = Falso Hacer
        intento <- pedir_intento
        adivinado <- verificar_intento(intento, numeroSecreto)
    FinMientras
FinAlgoritmo
