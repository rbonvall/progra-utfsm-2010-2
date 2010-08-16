Elementos de un algoritmo
=========================

Sentencias
----------
.. index:: sentencia, sentencia simple, sentencia de control

Una **sentencia** es
cada uno de los pasos que componen un algoritmo.
Hay que distinguir entre:

1. **sentencias simples**: son una única instrucción;
2. **sentencias de control**: están conformadas por varias otras sentencias,
   que a su vez pueden ser simples o compuestas.

Las sentencias simples son realizadas secuencialmente,
una después de la otra.
Más abajo veremos los dos tipos de sentencias de control:
los condicionales y los ciclos.

Expresiones y variables
-----------------------
.. index:: expresión, variable

Una **expresión** es una combinación de valores y operaciones
que son evaluados durante la ejecución del algoritmo
para obtener un resultado.

Por ejemplo, ``2 + 3`` es una expresión aritmética
que, al ser evaluada, siempre entrega el valor ``5`` como resultado.
En esta expresión,
``2`` y ``3`` son **valores literales**
y ``+`` es el operador de adición.

En el algoritmo para resolver la ecuación cuadrática
aparece la expresión ``b² − 4ac``,
cuyo resultado depende de cuáles son los valores de
``a``, ``b`` y ``c`` al momento de la evaluación.
A diferencia de los valores literales,
``a``, ``b`` y ``c`` son **variables**.
Una variable es un nombre que es asociado a un valor,
para poder usarlo de manera independiente
al valor específico que representa.

Las diferentes partes de una expresión
también son expresiones por sí solas.
En el ejemplo, ``b²``, ``b``, ``4ac`` y ``4``
son expresiones.

Asignaciones
------------
.. index:: asignación

Cuando una expresión es evaluada,
generalmente es necesario asociar el resultado a una variable
para poder referirse a él en sentencias posteriores.
Es lo que hacemos en la sentencia 2 del algoritmo de la ecuación cuadrática,
cuando calculamos el discriminante
y lo asociamos al nombre ``Δ``.

La acción de guardar un valor y ponerle un nombre
se representa como una sentencia simple llamada **asignación**,

Una asignación se representa así::

    variable = expresión

La asignación del ejemplo sería::

    Δ = b² − 4ac

La asignación debe interpretarse así:

1. primero la expresión a la derecha del signo ``=`` es evaluada,
   utilizando los valores que tienen
   las variables ``a``, ``b`` y ``c`` en ese momento;
2. una vez obtenido el resultado,
   el valor de la variable a la izquierda del signo ``=``
   es reemplazado por ese resultado.

Bajo esta interpretación,
es perfectamente posible una asignación como ésta::

    i = i + 1

Primero la expresión ``i + 1`` es evaluada,
entregando como resultado el sucesor del valor actual de ``i``.
A continuación, la variable ``i`` toma el nuevo valor.
Por ejemplo, si ``i`` tiene el valor 15,
después de la asignación tendrá el valor 16.

Esto *no* significa que 15 = 16.
Una asignación no es una igualdad matemática o una ecuación.

Condicionales
-------------
.. index:: condicional

A veces un algoritmo debe ejecutar sentencias diferentes
dependiendo de si una condición se cumple o no.
Es lo que hacemos en el paso 3 del ejemplo:
decidimos que la ecuación no tiene soluciones
solamente cuando se cumple que ``Δ < 0``.
Esto se llama un **condicional**.

Un condicional es una sentencia compuesta.

La condición que determina qué ejecutar
es una expresión, cuyo valor debe ser
verdadero o falso.

Ciclos
------
.. index:: ciclo, condición de término, iteración

Un **ciclo** ocurre cuando
un algoritmo ejecuta una serie de instrucciones
varias veces.

Como un algoritmo no puede quedarse pegado,
un ciclo debe tener además una **condición de término**.

Cada ejecución de un ciclo se llama **iteración**.

El ejemplo de la ecuación cuadrática no tiene ciclos.

Entrada
-------
.. index:: entrada, lectura

Cuando un algoritmo necesita recibir un dato,
lo hace mediante una sentencia de entrada,
que se encarga de poner el valor
en la variable correspondiente.

Por ahora, para referirnos a la sentencia de entrada
lo haremos simplemente como::

    Leer variable

Durante la ejecución,
esto significa que el dato
es entregado por alguien
y queda guardado en la variable.

En el ejemplo, la entrada ocurre en el paso 1,
y puede ser representada así::

    Leer a
    Leer b
    Leer c

Salida
------
.. index:: salida, escritura

Una vez que el algoritmo ha resuelto el problema
para el que fue diseñado,
debe entregar sus resultados como un mensaje.
Por ahora, lo representaremos así::

    Escribir mensaje 

Si el mensaje es un texto literal,
va entre comillas.
Si es una variable,
va sólo el nombre de la variable.

En el ejemplo, cuando no existen soluciones,
la salida puede ser representada así::

    Escribir 'No hay soluciones'

Cuando existe una única solución,
se puede incluirla en el mensaje::

    Escribir 'La solución única es ', x

-----

Las notaciones que hemos introducido
son útiles para describir un algoritmo 
de manera estructurada.

.. index:: pseudocódigo

Cuando usamos esta notación de manera informal,
se denomina **pseudocódigo**.
En este caso,
es posible tomarse ciertas libertades
que hacen que el algoritmo más fácil de entender.

Cuando escribamos programas de verdad,
cada uno de estos elementos
deberá ser representados de manera rigurosa
usando código en el lenguaje Fortran.

.. include:: disqus.rst

