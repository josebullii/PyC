Funcion num <- leerNumero ()
	Definir num Como Entero;
	Leer num;
	
	Repetir
		Si num > 1000 o num < 0 Entonces
			Escribir "El n�mero no est� dentro del intervalo, vuelva a introducirlo";
		FinSi
	Hasta Que num > 0 y num < 1000
	
FinFuncion

Funcion contador <-  contadorintentos(vNumeros, tam) 
	Definir n, i, contador Como Entero;

	Para i = 0 Hasta tam - 1 Con Paso 1 Hacer
		Si vNumeros[i] <> -1 Entonces
			contador = contador + 1;
		SiNo
			i = tam + 1;
		FinSi
	Fin Para
	
FinFuncion

Subproceso guardarNumero (vNumeros, tam, num)
	Definir i Como Entero;
	
	Para i = 0 Hasta tam - 1 Con Paso 1 Hacer
		Si vNumeros[i] == -1 Entonces
			vNumeros[i] = num;
			
			i = tam;
		FinSi
	Fin Para
	
FinSubProceso

SubProceso verNum(vNumeros, tam)
	Definir num, i Como Entero;
	
	Para i = 0 Hasta tam - 1 Con Paso 1 Hacer
		Si vNumeros[i] == -1 Entonces
			num = vNumeros[i];
			Escribir num;
		FinSi
	Fin Para
	
	Escribir num;
FinSubProceso

Algoritmo AdivinaNumero

	Definir vNumeros, i, num, numAleatorio, intentos, tam, contador Como Entero;
	num = -1;
	tam = 1000;
	Dimension vNumeros[tam];
	
	Escribir "En este juego te encargar�s de adivinar un n�mero aleatorio entre 1 y 1000";
	Escribir "**************************************************************************";
	numAleatorio = Azar (1000);
	
	Escribir "Dime un n�mero";
	num = leerNumero();
	
	Repetir
		Si num < numAleatorio Entonces
			Escribir "El n�mero introducido es menor, introduzca otro n�mero";
			num = leerNumero();
			guardarNumero(vNumeros, tam, num);
		SiNo
			Escribir "El n�mero introducido es mayor, introduzca otro n�mero";
			num = leerNumero();
			guardarNumero(vNumeros, tam, num);
		FinSi
	Hasta Que num == numAleatorio

	Si num == numAleatorio Entonces
		Escribir "�Enhorabuena! �Has acertado!";
	FinSi
	
	contador = contadorintentos(vNumeros, tam);
	
	Escribir "El n�mero a adivinar era " numAleatorio;
	Escribir "Has necesitado " contador " intentos";
	verNum(vNumeros, tam);
	
FinAlgoritmo