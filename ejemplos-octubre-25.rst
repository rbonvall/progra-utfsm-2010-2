Ejemplos de la clase del 25 de octubre
======================================

Manos de póker
--------------
En los juegos de naipes,
una carta tiene dos atributos:
un valor (A, 2, 3, 4, 5, 6, 7, 8, 9, 10, J, Q, K)
y una pinta (♥, ♦, ♣, ♠).

En un programa,
el valor puede ser representado como un número del 1 al 13,
y la pinta como un caracter:
♥ → ``'C'``,
♦ → ``'D'``,
♣ → ``'T'`` y
♠ → ``'P'``.
Para representar una carta,
podemos usar un registro::

    type :: carta
        integer :: valor
        character :: pinta
    end type

En el juego de póker, una mano tiene cinco cartas.
En un programa,
esto puede ser representado como un arreglo de registros de tipo ``carta``::

    type(carta), dimension(5) :: mano

**Ejercicio 1**:
un *full* es una mano en que tres cartas tienen un mismo valor,
y las otras dos cartas también tienen un mismo valor.
Por ejemplo:

* ``A♠``, ``A♥``, ``6♣``, ``A♦``, ``6♦`` es un full,
* ``2♣``, ``A♥``, ``Q♥``, ``A♦``, ``6♦`` no es un full.

Escriba una función llamada ``es_full``
que reciba una mano de cartas
e indique si es o no un full.

**Ejercicio 2**:
un *color* es una mano en que todas las cartas tienen la misma pinta.
Por ejemplo:

* ``8♠``, ``K♠``, ``4♠``, ``9♠``, ``2♠`` es un color,
* ``Q♣``, ``A♥``, ``5♥``, ``2♥``, ``2♦`` no es un color.

Escriba una función llamada ``es_color``
que reciba una mano de cartas
e indique si es o no un color.

**Ejercicio 3**:
una *escalera* es una mano en que las cartas tienen valores consecutivos
(como 5, 6, 7, 8 y 9).
Por ejemplo:

* ``4♠``, ``7♥``, ``3♥``, ``6♣``, ``5♣`` es una escalera.
* ``Q♣``, ``7♥``, ``3♥``, ``Q♥``, ``5♣`` no es una escalera.

Escriba una función llamada ``es_escalera``
que indique si una mano es o no una escalera.

-----

Las funciones de los ejercicios pueden ser escritas de varias maneras.
Lo importante es definir bien los algoritmos para detectar si se cumplen
cada una de las condiciones para clasificar una mano.

Para escribir la función ``es_full``,
sería conveniente contar con una función ``contar_valores``,
que cuente cuántas veces aparece cada valor en la mano.
Esta función recibiría como parámetro un arreglo de cartas
y entregaría como resultado un arreglo de 13 enteros,
donde el `i`-ésimo elemento sería la cantidad de veces
que aparece el valor `i` en la mano:

.. code-block:: none

   type(carta), dimension(5) :: mano
   ┌────┬────┬────┬────┬────┐
   │ Q♣ │ A♥ │ 2♥ │ 5♠ │ 2♦ │
   └────┴────┴────┴────┴────┘

   integer, dimension(13) :: cv
   cv = contar_valores(mano)
   ┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┐
   │ 1 │ 2 │ 0 │ 0 │ 1 │ 0 │ 0 │ 0 │ 0 │ 0 │ 0 │ 1 │ 0 │
   └───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┘
     1   2   3   4   5   6   7   8   9  10  11  12  13

Una vez que han sido obtenidas las cuentas de cada valor,
hay que revisar que entre ellas haya un dos y un tres.
Lo que hicimos en clases fue escribir una función ``está(x, arreglo)``
que indique si el valor ``x`` está en el ``arreglo``::

    if (esta(2, cuentas_valores) .and. esta(3, cuentas_valores)) then
        es = .TRUE.
    else
        es = .FALSE.

O, equivalentemente::

    es = esta(2, cuentas_valores) .and. esta(3, cuentas_valores)

Otra manera de hacerlo es usando la función ``any`` que provee Fortran.
``any`` recibe como parámetro un arreglo de valores ``logical``
y su resultado indica si por lo menos uno de los valores del arreglo es verdadero.

Al hacer la comparación ``cuenta_valores == 2``,
el resultado es un arreglo de valores lógicos
indicando si cada elemento es igual a 2.
Usando ``any``, se puede saber si por lo menos uno de ellos lo es:

.. code-block:: none

       ┌───┬───┬───┬───┐                   ┌───┬───┬───┬───┐
   any(│ 1 │ 2 │ 0 │ 0 │ == 2)         any(│ 1 │ 2 │ 0 │ 0 │ == 3)
       └───┴───┴───┴───┘                   └───┴───┴───┴───┘
    ↓                                   ↓
       ┌───┬───┬───┬───┐                   ┌───┬───┬───┬───┐
   any(│.F.│.T.│.F.│.F.│)              any(│.F.│.F.│.F.│.F.│)
       └───┴───┴───┴───┘                   └───┴───┴───┴───┘
    ↓                                   ↓

   .TRUE.                              .FALSE.

La función completa está en el programa al final de la página.

Para la función ``es_color``,
podríamos seguir una estrategia parecida,
y crear una función ``contar_pintas``
que entregue un arreglo de tamaño 4,
con las cuentas de las pintas:

.. code-block:: none

   type(carta), dimension(5) :: mano
   ┌────┬────┬────┬────┬────┐
   │ K♦ │ Q♥ │ 3♦ │ K♣ │ 9♥ │
   └────┴────┴────┴────┴────┘

   integer, dimension(4) :: cp
   cp = contar_pintas(mano)
   ┌───┬───┬───┬───┐
   │ 0 │ 2 │ 1 │ 2 │
   └───┴───┴───┴───┘
     ♠   ♥   ♣   ♦

Si alguna pinta tiene cuenta igual a cinco,
entonces la mano es un color.

Sin embargo,
esta función no es necesaria.
Basta con usar otra función provista por Fortran llamada ``all``,
que recibe un arreglo de valores lógicos
e indica si todos los valores son verdaderos.

Primero obtenemos a partir de la ``mano``
un arreglo que tenga sólo las pintas:

.. code-block:: none

   mano                           mano(:) % pinta
   ┌────┬────┬────┬────┬────┐     ┌───┬───┬───┬───┬───┐
   │ K♦ │ Q♥ │ 3♦ │ K♣ │ 9♥ │  →  │ ♦ │ ♥ │ ♦ │ ♣ │ ♥ │
   └────┴────┴────┴────┴────┘     └───┴───┴───┴───┴───┘

Luego comparamos todas las pintas con algún valor de referencia;
por ejemplo, con la primera de ellas.
Finalmente usamos ``all`` para verificar que todas las pintas son iguales:

.. code-block:: none

   all(mano(:) % pinta == mano(1) % pinta)

    ↓
       ┌───┬───┬───┬───┬───┐
   all(│ ♦ │ ♥ │ ♦ │ ♣ │ ♥ │ == ♦)
       └───┴───┴───┴───┴───┘
    ↓
       ┌───┬───┬───┬───┬───┐
   all(│.T.│.F.│.T.│.F.│.F.│)
       └───┴───┴───┴───┴───┘
    ↓

   .FALSE.

La función completa está en el programa al final de la página.

(Falta redactar explicación de función ``es_escalera``).

Programa clasificador de manos de póker
---------------------------------------
El siguiente programa
usa las funciones explicadas arriba
para clasificar las manos ingresadas por el usuario:

.. literalinclude:: programas/poker.f95

Note la manera en que el programa lee las cartas de la mano::

    read *, (mano(i), i = 1, 5)

Esta es la notación de `do implícito`_
para ingresar los elementos de un arreglo en una misma línea,
separados por espacios.

.. _do implícito: arreglos.html#entrada-de-elementos-de-un-arreglo

Como los elementos del arreglo son registros de dos campos,
cada uno debe ser ingresado poniendo dos valores separados por un espacio.
Un ejemplo de cómo puede verse la ejecución del programa
es el siguiente:

.. code-block:: none

     Ingrese las cinco cartas de la mano
    5 C  4 T  12 T  10 C  1 P
     No es nada

     Ingrese las cinco cartas de la mano
    4 C  2 C  13 C  8 C  7 C
     La mano es un color

     Ingrese las cinco cartas de la mano
    3 P  11 C  3 C  3 D  11 P
     La mano es un full

     Ingrese las cinco cartas de la mano
    4 C  7 T  8 D  6 D  5 P
     La mano es una escalera

**Tarea**:
escribir las funciones que indiquen si la mano
cumple con `el resto de las clasificaciones`_ del póker.

.. _el resto de las clasificaciones: http://www.poquer.com.es/ranking.html

.. include:: disqus.rst

