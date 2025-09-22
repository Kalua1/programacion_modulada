Funcion cantidad <- LeerCantidadVehiculos
	Definir cantidad Como Entero
	Escribir "Ingrese el número de vehículos a registrar: "
	Leer cantidad
FinFuncion


Funcion  RegistrarVehiculos(placas, horas, n)
	Para i <- 1 Hasta n Con Paso 1 Hacer
		Escribir "Ingrese la placa del vehículo ", i, ": "
		Leer placa
		Escribir "Ingrese la hora de ingreso del vehículo ", i, ": "
		Leer hora
		
		placas[i] <- placa
		horas[i] <- hora
	FinPara
FinFuncion

Funcion  MostrarResumen(placas, horas, n)
	Escribir "Resumen de Vehículos Registrados"
	Para i <- 1 Hasta n Con Paso 1 Hacer
		Escribir "Vehículo ", i, ": Placa = ", placas[i], " | Hora de ingreso = ", horas[i]
	FinPara
FinFuncion

Algoritmo Registro_Parqueadero_Funciones
	Definir n, i Como Entero
	Definir placas, horas Como Cadena
	
	n <- LeerCantidadVehiculos
	
	Dimension placas[n]
	Dimension horas[n]
	
	RegistrarVehiculos(placas, horas, n)
	
	MostrarResumen(placas, horas, n)
	
FinAlgoritmo
