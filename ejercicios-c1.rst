Ejercicios para el certamen 1
=============================
Algunos problemas para soltar la mano.

Ruteo
-----
Considere el siguiente programa:

.. literalinclude:: programas/ruteo-burbuja.f95

1. Rutee el programa con la entrada ``a`` = 5, ``b`` = 1, ``c`` = 4.
2. Rutee el programa con la entrada ``a`` = 4, ``b`` = 5, ``c`` = 1.
3. Deducir qué hace el programa.

Computador adivinador
---------------------
Hacer un programa que adivina el número que el usuario ha pensado.
El número está entre 0 y 100.
Cada vez que el programa intenta adivinar el número,
el usuario debe responder:

  * ``=``, si el número entregado por el computador es el número pensado;
  * ``<``, si el número pensado es menor al entregado;
  * ``>``, si el número pensado es mayor al entregado.

Por ejemplo, si yo pienso el número 82,
la ejecución del programa se vería así:

.. code-block:: none

      El numero es  50?
     >
      El numero es  75?
     >
      El numero es  88?
     <
      El numero es  81?
     >
      El numero es  84?
     <
      El numero es  82?
     =
      Bien!

Tenis
-----
El joven periodista Solarrabietas debe relatar un partido de tenis,
pero no conoce las reglas del deporte.
En especial,
no ha logrado aprender cómo saber si un set ya terminó,
y quién lo ganó.

Un partido de tenis se divide en sets.
Para ganar un set,
un jugador debe ganar 6 juegos,
pero además debe haber ganado por lo menos dos juegos más que su rival.
Si el set está empatado a 5 juegos,
el ganador es el primero que llegue a 7.
Si el set está empatado a 6 juegos,
el set se define en un último juego,
en cuyo caso el resultado final es 7-6.

Sabiendo que el jugador A ha ganado :math:`m` juegos,
y el jugador B, :math:`n` juegos,
al periodista le gustaría saber:

* si A ganó el set, o
* si B ganó el set, o
* si el set todavía no termina, o
* si el resultado es inválido (por ejemplo, 8-6 o 7-3).

Desarrolle un programa que solucione el problema de Solarrabietas:

.. code-block:: none

     Ingrese juegos ganados por A y B:
    4 5
     Aun no termina

.. code-block:: none

     Ingrese juegos ganados por A y B:
    5 7
     Gano B

.. code-block:: none

     Ingrese juegos ganados por A y B:
    5 6
     Aun no termina

.. code-block:: none

     Ingrese juegos ganados por A y B:
    3 7
     Invalido

.. code-block:: none

     Ingrese juegos ganados por A y B:
    6 2
     Gano A

.. code-block:: none

     Ingrese juegos ganados por A y B:
    6 5
     Aun no termina


.. include:: disqus.rst
