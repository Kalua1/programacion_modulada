Funcion opcion <- MostrarMenu
	Definir opcion Como Entero
	Escribir " MENÚ BIBLIOTECA"
	Escribir "1. Registrar libro"
	Escribir "2. Imprimir libros"
	Escribir "3. Salir del programa"
	Escribir "Seleccione una opción:"
	Leer opcion
FinFuncion


Funcion libro <- RegistrarLibro
	Definir titulo, autor Como Cadena
	Definir paginas Como Entero
	Definir libro Como Cadena
	
	Escribir "Ingrese el título del libro:"
	Leer titulo
	Escribir "Ingrese el nombre del autor:"
	Leer autor
	Escribir "Ingrese la cantidad de páginas:"
	Leer paginas
	
	libro <- "Título: " + titulo + " | Autor: " + autor + " | Páginas: " + ConvertirATexto(paginas)
FinFuncion


funcion MostrarLibros(lista_libros Por Referencia)
	Si lista_libros = "" Entonces
		Escribir "No hay libros registrados aún."
	SiNo
		Escribir "Lista de libros registrados:"
		Escribir lista_libros
	FinSi
FinFuncion




Algoritmo Biblioteca
	Definir lista_libros Como Cadena
	Definir opcion Como Entero
	
	lista_libros <- ""
	
	Repetir
		_opcion <- MostrarMenu
		
		Segun opcion Hacer
			1:
				lista_libros <- lista_libros + RegistrarLibro + "\n"
				Escribir "Libro registrado con éxito."
				
			2:
				MostrarLibros(lista_libros)
				
			3:
				Escribir "Saliendo del programa. ¡Hasta luego!"
				
			De Otro Modo:
				Escribir "Opción no válida, intente de nuevo."
		FinSegun
	Hasta Que opcion = 3
FinAlgoritmo

