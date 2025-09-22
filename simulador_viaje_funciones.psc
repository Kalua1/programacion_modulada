Funcion d <- pedir_distancia
    Definir d Como Real
    Escribir "Ingrese la distancia total del viaje (km): "
    Leer d
FinFuncion

Funcion v <- pedir_velocidad
    Definir v Como Real
    Escribir "Ingrese la velocidad promedio del coche (km/h): "
    Leer v
FinFuncion

Funcion t <- calcular_tiempo(d, v)
    Definir t Como Real
    t <- d / v
FinFuncion

Funcion mostrar_resultado(t)
    Escribir "El tiempo estimado de viaje es: ", t, " horas."
FinFuncion

Algoritmo simulador_viaje_funciones
    Definir distancia, velocidad, tiempo Como Real
    Definir respuesta Como Caracter
    
    respuesta <- "S"
    
    Mientras respuesta = "S" O respuesta = "s" Hacer
        distancia <- pedirDistancia
        velocidad <- pedirVelocidad
        
        tiempo <- calcular_tiempo(distancia, velocidad)
	
        mostrar_resultado(tiempo)
        
        Escribir "¿Desea hacer otro viaje? (S/N): "
        Leer respuesta
    FinMientras
    
    Escribir "Simulación finalizada. ¡Buen viaje!"
FinAlgoritmo
