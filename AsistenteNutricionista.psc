Funcion peso <- LeerPeso
    Definir peso Como Real
    Escribir "Ingrese su peso en kilogramos: "
    Leer peso
FinFuncion

Funcion altura <- LeerAltura
    Definir altura Como Real
    Escribir "Ingrese su altura en metros: "
    Leer altura
FinFuncion

Funcion imc <- CalcularIMC(peso, altura)
    Definir imc Como Real
    imc <- peso / (altura * altura)
FinFuncion

SubAlgoritmo MostrarCategoria(imc)
    Escribir "Su IMC es: ", imc
    Si imc < 18.5 Entonces
        Escribir "Categoría: Bajo peso"
    Sino
        Si imc < 24.9 Entonces
            Escribir "Categoría: Peso normal"
        Sino
            Si imc < 29.9 Entonces
                Escribir "Categoría: Sobrepeso"
            Sino
                Escribir "Categoría: Obesidad"
            FinSi
        FinSi
    FinSi
FinSubAlgoritmo

Algoritmo AsistenteNutricionista
    Definir peso, altura, imc Como Real
	
    peso <- LeerPeso
    altura <- LeerAltura
    imc <- CalcularIMC(peso, altura)
	
    MostrarCategoria(imc)
FinAlgoritmo
