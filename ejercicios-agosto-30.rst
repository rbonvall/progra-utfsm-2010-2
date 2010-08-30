Ejercicios de la clase del 30 de agosto
=======================================

Ejercicio 1: ruteo
------------------
Rutee el siguiente programa (del certamen 1 del semestre pasado):

.. literalinclude:: programas/ruteo-2010-1.f95

Las reglas para el ruteo son:

* una columna para cada variable;
* se cambia el valor de una variable en la tabla sólo cuando:

  + hay una asignación, o
  + hay una lectura de datos (``read``);

* cuando el programa hace salida (``print``),
  se escribe en la columna «salida estándar»
  lo que el programa imprime por pantalla;
* cada fila de la tabla
  corresponde a una única sentencia del programa,
  por lo que no se ponen varios valores en una fila.

El ruteo es el siguiente:

    +-----------+-----------+-----------+----------------------+
    |``t``      |``i``      |``j``      | Salida estándar      |
    +===========+===========+===========+======================+
    |           |           |         5 |                      |
    +-----------+-----------+-----------+----------------------+
    |           |         4 |           |                      |
    +-----------+-----------+-----------+----------------------+
    |           |           |         6 |                      |
    +-----------+-----------+-----------+----------------------+
    |           |         3 |           |                      |
    +-----------+-----------+-----------+----------------------+
    |           |           |         5 |                      |
    +-----------+-----------+-----------+----------------------+
    |           |         2 |           |                      |
    +-----------+-----------+-----------+----------------------+
    |           |           |         6 |                      |
    +-----------+-----------+-----------+----------------------+
    |``.TRUE.`` |           |           |                      |
    +-----------+-----------+-----------+----------------------+
    |           |           |           | ``j = 6``            |
    +-----------+-----------+-----------+----------------------+
    |``.FALSE.``|           |           |                      |
    +-----------+-----------+-----------+----------------------+

Ejercicio 2: menor y mayor
--------------------------
Escriba un programa que pida al usuario que ingrese diez valores,
y muestre el menor y el mayor de los números ingresados.
ingresados por el usuario.

.. code-block:: none

     Ingrese 10 valores
    67
    43
    42
    15
    91.2
    4
    95
    6
    44
    43
     El menor es   4.0000000
     El mayor es   95.000000

(Por publicar la respuesta)

Control 2: ruteo
----------------
Rutee el siguiente programa:

.. literalinclude:: programas/ruteo-2010-2-control-2.f95

Tarea
~~~~~
Pruebe el programa con distintos valores de ``a``.
¿Qué hace el programa? ¿Cómo lo logra?

.. include:: disqus.rst
