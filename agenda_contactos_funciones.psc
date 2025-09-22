funcion _opcion <- Menu
	Escribir "MENÚ AGENDA"
	Escribir "1. Agregar contacto"
	Escribir "2. Mostrar agenda"
	Escribir "3. Salir"
	Escribir "Seleccione una opción: "
	Leer opcion
FinFuncion


Funcion nuevoI <- AgregarContacto(nombres, telefonos, i)
	
	nuevoI <- i + 1
	Escribir "Ingrese el nombre del contacto ", nuevoI, ": "
	Leer nombre
	Escribir "Ingrese el número de teléfono de ", nombre, ": "
	Leer telefono
	
	nombres[nuevoI] <- nombre
	telefonos[nuevoI] <- telefono
	
	Escribir "Contacto registrado con éxito."
FinFuncion


funcion MostrarAgenda(nombres, telefonos, total)
	
	Si total = 0 Entonces
		Escribir "No hay contactos registrados aún."
	SiNo
		Escribir "Agenda de Contactos"
		Para j <- 1 Hasta total Con Paso 1 Hacer
			Escribir "Contacto ", j, ": ", nombres[j], " | Tel: ", telefonos[j]
		FinPara
	FinSi
FinFuncion

Algoritmo AgendaContactos_Funciones
	Definir nombres, telefonos Como Cadena
	Definir opcion, i Como Entero
	
	Dimension nombres[100]
	Dimension telefonos[100]
	i <- 0
	
	Repetir
		_opcion <- Menu
		
		Segun _opcion Hacer
			1: 
				i <- AgregarContacto(nombres, telefonos, i)
			2:
				MostrarAgenda(nombres, telefonos, i)
			3:
				Escribir "Saliendo de la agenda..."
			De Otro Modo:
				Escribir "Opción no válida, intente de nuevo."
		FinSegun
	Hasta Que opcion = 3
	
FinAlgoritmo