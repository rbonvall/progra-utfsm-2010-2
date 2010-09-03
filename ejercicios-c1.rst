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
la ejecución del programa se vería así::

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

(Ya subiré algunos más)
