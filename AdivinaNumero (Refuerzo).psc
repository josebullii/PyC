Funcion num <- leerNumero ()
	Definir num Como Entero;
	
	Escribir "Dime un número";
	Leer num;
	
	Repetir
		Si num > 1000 o num < 0 Entonces
			Escribir "El número no está dentro del intervalo, vuelva a introducirlo";
		FinSi
	Hasta Que num > 0 y num < 1000
	
FinFuncion

SubProceso contador 
	Definir n Como Entero;
FinSubProceso

Algoritmo AdivinaNumero

	Definir vNumeros, i, num, numAleatorio, intentos Como Entero;
	i = 1;
	num = -1;
	Dimension vNumeros[i];
	
	Escribir "En este juego te encargarás de adivinar un número aleatorio entre 1 y 1000";
	Escribir "**************************************************************************";
	numAleatorio = Azar (1000);
	
	num = leerNumero();
	
	Repetir
		Si num < numAleatorio Entonces
			Escribir "El número introducido es menor, introduzca otro número";
			num = leerNumero();
		SiNo
			Escribir "El número introducido es mayor, introduzca otro número";
			num = leerNumero();
		FinSi
	Hasta Que num = numAleatorio

	Si num == numAleatorio Entonces
		Escribir "¡Enhorabuena! ¡Has acertado!";
	FinSi
	
	Escribir "El número a adivinar era " numAleatorio;
	Escribir "Has necesitado " intentos " intentos";
	
FinAlgoritmo
