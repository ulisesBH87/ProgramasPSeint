// tarea idear , sin necesariamente la programación.
// como restringir al usuario.

Algoritmo sin_titulo
	//Matriz 4*4  		ok
	//Indicador carlificaciones dentro de la matriz.	ok
	//Indicador Calificación menor.					ok
	//Indicador Calificación mayor.					ok
	//Mostrar la posición de cada calificación  menor y mayor dentro de la matriz.	
	//primero creamos matriz de 4*4
	
	Dimension matriz[4,4]
	Definir a Como Entero
	Definir numeroMayor Como Entero
	Definir iMayor como entero  // para guardar la ubicación del eje de las filas.
	Definir jMayor como Entero  // para guardar la ubicación del eje de las columnas.
	
	Definir imenor como entero
	Definir jmenor como Entero
	
	numeroMayor=0   //por que se debe poner la calificación menor de la 
	// para recorrer la matriz son dos ciclos para.... con entender uno ya puedo replicar los demas
	//como le hacemos para meter laws calificaciones, una matriz se usa con dos para, 
	//el primer espacion nunca es el 1 es el cero. la matriz va de 0 a 3
	// cada cuadrito se llama celda.
	//la fila 0
	
	//llenamos la matricz con dos ciclos de repetición, 
	//antes lo haciamos con el iterador,  iba de una vuelta a la siguiente, a la siguiente, etc.
	// ya no me sirve solo una i osea un iterador, 
	
	numeroMayor=0 //inicializado el numeromenor posible del rango 1 al 10 osea cero.
	numeroMenor=10
	//llenado de los valores de la matriz.	
	Escribir "Este programa está destinado a ingresar calificaciones y apartir de ellas mostrar la calificación mayor y la calificación menor"
	Escribir "A continuación, vamos a leer los datos"
	Escribir "Las calificaciones solo se permite entre 0 y 10"
	
	Para i=0 Hasta 3 Con Paso 1 Hacer         //este se desplaza hacia abajo de la tabla, aqui dice hasta 3 pero son 4 repeticiones
		Para j=0 Hasta 3 Con Paso 1 Hacer    //este se desplaza a la derecha de la tabla
			Escribir "Ingresa la calificación ",i," ",j			
			Leer matriz[i, j]	
			Si matriz[i,j] <0  O  matriz[i,j] >10 Entonces              //tarea
			    Escribir "Solo se permiten calificaciones entre 0 y 10"	 //tarea		
		Fin Si		
		Fin Para
	Fin Para

	//muestro los valores de la matríz
	Para i=0 Hasta 3 Con Paso 1 Hacer        // para mostrar la información en ciclos. 
		Para j=0 Hasta 3 Con Paso 1 Hacer    			
			Escribir i, ",", j,":", matriz[i,j]			
		Fin Para
	Fin Para		
	
	Para i=0 Hasta 3 Con Paso 1 Hacer         // para buscar el numero mayor
		Para j=0 Hasta 3 Con Paso 1 Hacer    			
			Si numeroMayor<matriz[i,j]Entonces
				numeroMayor=matriz[i,j]			
				iMayor=i
				jmayor=j
			FinSi
		Fin Para
	Fin Para	
	Escribir "La calificacion mayor es:", numeroMayor
	Escribir  "esta en la posición : " iMayor, ",", jmayor
	
	Para i=0 Hasta 3 Con Paso 1 Hacer         // para buscar el numero menor
		Para j=0 Hasta 3 Con Paso 1 Hacer    			
			Si numeroMenor>matriz[i,j]Entonces
				numeroMenor=matriz[i,j]			
				imenor=i
				jmenor=j
			FinSi
		Fin Para
	Fin Para	
	Escribir "La calificacion menor es:", numeromenor
	Escribir  "esta en la posición : " imenor, ",", jmenor
	
FinAlgoritmo
