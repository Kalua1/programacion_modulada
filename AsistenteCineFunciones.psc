Funcion edad <- PedirEdad
    Definir edad Como Entero
    Escribir "Por favor, ingrese su edad: "
    Leer edad
FinFuncion


Funcion categoria <- ObtenerCategoria(edad)
    Definir categoria Como Cadena
    
    Si edad < 7 Entonces
        categoria <- "ninos"
    Sino
        Si edad >= 7 Y edad <= 17 Entonces
            categoria <- "adolescentes"
        Sino
            Si edad >= 18 Y edad <= 30 Entonces
                categoria <- "adultos"
            Sino
                categoria <- "mayores"
            FinSi
        FinSi
    FinSi
FinFuncion


Funcion MostrarRecomendacion(categoria)
    Escribir "Recomendación de películas:"
    
    Segun categoria Hacer
        "ninos":
            Escribir "Películas animadas y educativas aptas para todas las edades."
            Escribir "Ejemplo: Coco, Toy Story, Buscando a Nemo."
        "adolescentes":
            Escribir "Películas familiares, aventuras y comedias."
            Escribir "Ejemplo: Frozen, Los Increíbles, Jumanji, Spider-Man: Into the Spider-Verse."
        "adultos":
            Escribir "Acción, drama, comedia y ciencia ficción."
            Escribir "Ejemplo: Avengers, Interestelar, La La Land, John Wick."
        "mayores":
            Escribir "Películas clásicas y dramas de gran interés."
            Escribir "Ejemplo: El Padrino, Titanic, Casablanca, Forrest Gump."
    FinSegun
FinFuncion


Algoritmo AsistenteCineFunciones
    Definir edad Como Entero
    Definir categoria Como Cadena
	
    Escribir "Bienvenido al Cine Virtual"
    
    edad <- PedirEdad
    categoria <- ObtenerCategoria(edad)
    MostrarRecomendacion(categoria)
	
    Escribir "Disfrute su función"
FinAlgoritmo
