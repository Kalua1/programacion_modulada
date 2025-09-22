Funcion tarea <- RegistrarTarea(num)
	Definir tarea, descripcion, vencimiento, texto Como Cadena
	
	
	Escribir "Ingrese el nombre de la tarea:"
	Leer tarea
	Escribir "Ingrese la descripción de la tarea:"
	Leer descripcion
	Escribir "Ingrese la fecha de vencimiento (dd/mm/aaaa):"
	Leer vencimiento
	
	texto <- ConvertirATexto(num) + ". " + tarea + " | " + descripcion + " | Vence: " + vencimiento + "\n"
	
	tarea <- texto
FinFuncion


Funcion opcion <- MostrarMenu
	Definir opcion Como Entero
	Escribir "¿Desea agregar otra tarea? (1 = sí, 0 = no):"
	Leer opcion
FinFuncion


funcion MostrarTareas(lista, total)
	
	Escribir "LISTA DE TAREAS"
	Si lista = "" Entonces
		Escribir "No hay tareas registradas."
	SiNo
		Escribir lista
		Escribir "Total de tareas registradas: ", total
	FinSi
FinFuncion


Algoritmo Lista_de_tareas_con_funciones
	Definir lista_tareas Como Cadena
	Definir opcion, contador Como Entero
	
	lista_tareas <- ""
	contador <- 0
	_opcion <- 1
	
	Mientras _opcion = 1 Hacer
		contador <- contador + 1
		lista_tareas <- lista_tareas + RegistrarTarea(contador)
		
		
		_opcion <- MostrarMenu
	FinMientras
	
	MostrarTareas(lista_tareas, contador)
FinAlgoritmo



