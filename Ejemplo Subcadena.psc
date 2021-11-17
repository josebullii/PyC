Algoritmo Ejemplo
	
	Definir frase Como Caracter;
	Definir tam, i Como Entero;
	frase = "";
	
	Escribir "Escribe una frase";
	Leer frase;
	
	tam = Longitud (frase);
	Para i = 0 Hasta tam Con Paso 1 Hacer
		Si SubCadena(frase,i,i) <> " " Entonces
			Escribir SubCadena(frase,i,i);
		FinSi
	Fin Para
	
	
	Escribir SubCadena(frase,0,tam);
	
FinAlgoritmo
