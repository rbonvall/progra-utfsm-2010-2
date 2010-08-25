Ejercicios de la clase del 25 de agosto
=======================================

Ejercicio 1
-----------
Escriba un programa que muestre el promedio de tres números reales
ingresados por el usuario.

.. code-block:: none

     Ingrese tres numeros:
    7
    1
    5.5
       4.5000000

El problema es bastante sencillo: basta con leer los tres números,
guardarlos en tres variables, y luego promediarlos:

.. literalinclude:: programas/promedio-n.f95

Algunas variaciones son posibles.
Por ejemplo, la variable ``promedio`` puede ser omitida
si la expresión es puesta directamente en la sentencia ``print``::

    print *, (x + y + z) / 3

La lectura de las tres variables puede hacerse en la misma línea::

    read *, x, y, z

Las cuatro variables pueden ser declaradas en la misma línea,
o en cuatro líneas separadas.

En general, siempre debe elegirse la manera que hace
que el código sea más claro y fácil de entender.
En este caso, el programa es tan simple que no hay mucha diferencia
entre una manera u otra.

Ejercicio 2
-----------
(por escribir)

.. include:: disqus.rst
