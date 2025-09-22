Funcion cap <- pedir_capacidad
    Definir cap Como Entero
    Escribir "Ingrese la capacidad inicial de la impresora (cantidad de hojas): "
    Leer cap
FinFuncion

Funcion p <- pedir_paginas
    Definir p Como Entero
    Escribir "¿Cuántas páginas desea imprimir?: "
    Leer p
FinFuncion

Funcion nueva_capacidad <- imprimir_paginas(capacidad, paginas)
    Definir nueva_capacidad Como Entero
    
    Si paginas <= capacidad Entonces
        Escribir "Imprimiendo ", paginas, " páginas..."
        nueva_capacidad <- capacidad - paginas
        Escribir "Impresión completada. Papel restante: ", nueva_capacidad
    SiNo
        Escribir "Error: No hay suficiente papel para imprimir ", paginas, " páginas."
        nueva_capacidad <- capacidad
    FinSi
FinFuncion

Algoritmo Impresora_con_funciones
    Definir capacidad, paginas Como Entero
    
    capacidad <- pedir_capacidad
    Mientras capacidad > 0 Hacer
        Escribir "Cantidad de hojas disponibles: ", capacidad
        paginas <- pedir_paginas
        capacidad <- imprimir_paginas(capacidad, paginas)
    FinMientras
	
    Escribir "No queda papel en la impresora. Recargue para continuar."
FinAlgoritmo
