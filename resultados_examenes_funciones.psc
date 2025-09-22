Funcion nota <- IngresarNota
	Definir nota Como Real
	Escribir "Ingrese el resultado de su examen (1 - 10):"
	Leer nota
FinFuncion


Funcion opcion <- DeseaContinuar
	Definir opcion Como Entero
	Escribir "¿Desea ingresar otro resultado? (1 = SI, 0 = NO):"
	Leer opcion
FinFuncion


SubProceso MostrarResultados(promedio, cantidad)
	Escribir "============================"
	Escribir "Cantidad de examenes: " cantidad
	Escribir "Promedio de notas: " promedio
	
	Si promedio >= 6 Entonces
		Escribir "? Usted ha sido aprobado"
	SiNo
		Escribir "? Ha sido reprobado"
	FinSi
FinSubProceso


Algoritmo Resultados_examenes_Funciones
	
	Definir suma, promedio Como Real
	Definir resultado Como Real
	Definir contador, opcion Como Entero
	
	suma <- 0
	contador <- 0
	_opcion <- 1
	
	Mientras _opcion = 1 Hacer
		resultado <- IngresarNota
		suma <- suma + resultado
		contador <- contador + 1
		_opcion <- DeseaContinuar
	FinMientras
	
	promedio <- suma / contador
	
	MostrarResultados(promedio, contador)
	
FinAlgoritmo
