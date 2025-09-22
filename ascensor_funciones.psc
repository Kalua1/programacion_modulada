funcion piso <- definir_piso
	definir piso Como Real
	Escribir "Ingrese el piso al que desea ir"
	leer piso
	
FinFuncion

funcion piso_actual <- definir_piso_actual
	piso_actual <- 1
FinFuncion

funcion ir_al_piso(piso_deseado)
	definir piso_actual Como real
	piso_actual <- definir_piso_actual
	
	si piso_deseado >= 1 y piso_deseado <= 10 entonces
		escribir "subiendo al piso deseado"
		escribir "llegaste al piso " piso_deseado
		piso_actual <- piso_deseado
		
	SiNo
		escribir "ERROR ? el piso ingresado no es valido"
	FinSi
FinFuncion

Algoritmo ascensor_funciones
	definir piso, piso_deseado Como Real
	
	piso_deseado <- definir_piso
	
	ir_al_piso(piso_deseado)
	
FinAlgoritmo
