Funcion opcion <- LeerOpcion
    Definir opcion Como Caracter
    Escribir "Sistema de Clasificación - Campeonato Deportivo"
    Escribir "Ingrese el resultado del partido:"
    Escribir "G = Ganó Equipo 1"
    Escribir "P = Ganó Equipo 2"
    Escribir "E = Empate"
    Escribir "S = Salir"
    Leer opcion
FinFuncion


Funcion puntos <- CalcularPuntos(resultado, equipo)
    Definir puntos Como Entero
    puntos <- 0
	
    Segun resultado Hacer
        "G":
            Si equipo = 1 Entonces
                puntos <- 3
            Sino
                puntos <- 0
            FinSi
        "P":
            Si equipo = 2 Entonces
                puntos <- 3
            Sino
                puntos <- 0
            FinSi
        "E":
            puntos <- 1
        De Otro Modo:
            puntos <- 0
    FinSegun
FinFuncion


Funcion MostrarClasificacion(p1, p2)
    Escribir "CLASIFICACIÓN ACTUAL"
    Escribir "Equipo 1: ", p1, " puntos"
    Escribir "Equipo 2: ", p2, " puntos"
FinFuncion


Algoritmo CampeonatoConFunciones
    Definir opcion Como Caracter
    Definir puntosEquipo1, puntosEquipo2 Como Entero
    puntosEquipo1 <- 0
    puntosEquipo2 <- 0
	
    Repetir
        opcion <- LeerOpcion
		
        Si opcion = "G" O opcion = "P" O opcion = "E" Entonces
            puntosEquipo1 <- puntosEquipo1 + CalcularPuntos(opcion, 1)
            puntosEquipo2 <- puntosEquipo2 + CalcularPuntos(opcion, 2)
			
            MostrarClasificacion(puntosEquipo1, puntosEquipo2)
        Sino
            Si opcion <> "S" Entonces
                Escribir "Opción no válida, intente de nuevo."
            FinSi
        FinSi
    Hasta Que opcion = "S"
	
    Escribir "Clasificación Final:"
    MostrarClasificacion(puntosEquipo1, puntosEquipo2)
    Escribir "Fin del campeonato"
FinAlgoritmo
