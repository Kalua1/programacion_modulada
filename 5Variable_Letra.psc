Algoritmo Registro_Parqueadero
	Definir n, i Como Entero
	Definir placa, hora Como Cadena
	
	Escribir "Ingrese el número de vehículos a registrar: "
	Leer n
	
	Dimension placas[n]
	Dimension horas[n]
	
	Para i <- 1 Hasta n Con Paso 1 Hacer
		Escribir "Ingrese la placa del vehículo ", i, ": "
		Leer placa;
		
		Escribir "Ingrese la hora de ingreso del vehículo ", i, ": "
		Leer hora;
		
		placas[i] <- placa;
		horas[i] <- hora;
	FinPara
	
	Escribir "Resumen de Vehículos Registrados"
	Para i <- 1 Hasta n Con Paso 1 Hacer
		Escribir "Vehículo ", i, ": Placa = ", placas[i], " | Hora de ingreso = ", horas[i]
	FinPara
FinAlgoritmo
