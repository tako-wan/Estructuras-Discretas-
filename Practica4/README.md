# Practica4

## Recursión First Steps: "El pollito pío"
Tengamos en cuenta que la recursión es una función la cual se va a llamar a si misma, y tiene tanto un "caso base" como un "caso reursivo".

	 "Para saber recursión
	 hay que saber recursión"
	             -Victor Zamora

En la canción el pollito pío tenemos un ejemplo sobre la recursión, usando esta analogía tenemos como caso base la parte de la canción "En la radio hay un pollito", durante toda la canción van apareciendo más animales e incluso un tractor que es diferente del pollo, con esto podemos mandar a llamar a la recursión preguntando por ejemplo ¿ caso base = pollito ?, si la respuesta es falsa entonces seguira ejecutandose la recursión hasta llegar a nuestro caso base que seria el pollito.

## Objetivo:
Uso de tipo y clases de datos, implementación de la recursión, modulos y funciones auxiliares.

    •a_natural: La idea era bastante simple, solamente agregabamos sucesores hasta
    llegar a nuestro caso base "cero", para eso	tambien cada vez teniamos que ir
    restando una unidad al número "n"

    •a_entero: Esta función es analoga a la de a_natural, solamente que en este caso
    teniamos que ir sumando los sucesores hasta que se llegara al caso base.

    •potenciaNat: Nuestro caso base va a ser 1 (cualquier número elevado a la 0 da 1),
    ahora si nuestro número se eleva a una potencia diferente de 0 ent. se aplicara
    esa multiplicación n veces (depende de a que potencia se este multiplicando).

    •facNat: Como caso base sabemos que el factorial de 0 es 1 (0! = 1), si el numero
    no es igual a nuestro caso base ent. aplicamos la formula de factorial
    n! = n * (n-1) * (n-2)... lo que buscamos es similar a la potencia. 

    •mayorIgual: La función mayor igual solamente requiere de comparación, en este caso
    comparé mis casos base y si eran igules regresaba True y si eran diferentes regresaba False,
    no es complicado simplemente hay que buscar que se cumpla la condición >=.

    •aplana: -- 

## Tiempo requerido:
Aproximadamente unas 6-7hrs 

## Comentarios extra:
Es muy importante que antes de programar, se planteé el problema para asi analizarlo y despues poder empezar a programar ( ir desmenuzando el problema para ir resolviendolo poco a poco). Esto es buena práctica para la programación.
Cree las funciones de suma_natural y multi_natural nuevamente en el archivo natural.hs ya que hubo conflicto con los modulos.

![Captura_de_pantalla git log](https://github.com/tako-wan/Estructuras-Discretas-/blob/main/Captura%20desde%202025-09-23%2020-46-29.png?raw=true)