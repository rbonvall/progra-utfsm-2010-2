Ejemplos de la clase del 25 de octubre
======================================

Éstos serán los ejercicios que haremos
en la clase del lunes 25 de octubre.

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

.. include:: disqus.rst

