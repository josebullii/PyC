Funcion num <- leerNumero ()
	Definir num Como Entero;
	
	Escribir "Dime un n�mero";
	Leer num;
	
	Repetir
		Si num > 1000 o num < 0 Entonces
			Escribir "El n�mero no est� dentro del intervalo, vuelva a introducirlo";
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
	
	Escribir "En este juego te encargar�s de adivinar un n�mero aleatorio entre 1 y 1000";
	Escribir "**************************************************************************";
	numAleatorio = Azar (1000);
	
	num = leerNumero();
	
	Repetir
		Si num < numAleatorio Entonces
			Escribir "El n�mero introducido es menor, introduzca otro n�mero";
			num = leerNumero();
		SiNo
			Escribir "El n�mero introducido es mayor, introduzca otro n�mero";
			num = leerNumero();
		FinSi
	Hasta Que num = numAleatorio

	Si num == numAleatorio Entonces
		Escribir "�Enhorabuena! �Has acertado!";
	FinSi
	
	Escribir "El n�mero a adivinar era " numAleatorio;
	Escribir "Has necesitado " intentos " intentos";
	
FinAlgoritmo
