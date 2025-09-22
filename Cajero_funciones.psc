Funcion monto <- solicitar_monto
	definir monto Como Real
	Escribir "Ingrese el monto que desea retirar"
	leer monto
FinFuncion

funcion valido <- validar_monto(monto, saldo)
	definir valido Como Logico
	si monto > 0 y monto <= saldo entonces 
		valido <- Verdadero
	sino
		valido <- falso
	FinSi
FinFuncion


funcion nuevo_saldo <- calcular_saldo(saldo, retiro)
	definir nuevo_saldo como real 
	saldo <- nuevo_saldo - retiro
FinFuncion


algoritmo Cajero_funciones
	definir saldo, retiro, saldo_restante Como Real
	saldo <- 1000
	escribir "Bienvenido al cajero automatico"
	Escribir "Su saldo actual es_: $" , saldo
	
	retiro <- solicitar_monto
	si validar_monto(retiro, saldo) Entonces
		saldo_restante <- calcular_saldo(saldo, retiro)
		Escribir "Retiro exitoso"
		Escribir "Su nuevo saldo es: $ ", saldo_restante
	SiNo
		Escribir "ERROR, el monto solicitado excede el monto disponible"
	FinSi
	
FinAlgoritmo
	