Funcion n <- pedir_numero
    Definir n Como Entero
    Escribir "Ingrese un número entero positivo para iniciar la cuenta regresiva: "
    Leer n
FinFuncion

Funcion cuenta_regresiva(n)
    Si n < 0 Entonces
        Escribir "Error: El número debe ser positivo."
    SiNo
        Mientras n >= 0 Hacer
            Escribir n
            n <- n - 1
        FinMientras
    FinSi
FinFuncion

Funcion mostrar_mensaje_final
    Escribir "¡Tiempo cumplido!"
FinFuncion

Algoritmo cuenta_regresiva_funciones
    Definir numero Como Entero
    
    numero <- pedir_numero
    
    cuenta_regresiva(numero)
    
    mostrar_mensaje_final
FinAlgoritmo
