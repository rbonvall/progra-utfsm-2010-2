Ejemplos de la clase del 23 de agosto
=====================================

Ejemplos de conversión de reales a enteros
------------------------------------------
Con el siguiente programa
se pueden apreciar las diferencias
entre las cuatro funciones
para convertir de reales a enteros:

.. literalinclude:: programas/conv-real-entero.f95

Comportamiento de la función mod
--------------------------------
El siguiente programa ilustra
el comportamiento de la función ``mod``
cuando el segundo argumento es 3:

.. literalinclude:: programas/mod.f95

Comentador de notas
-------------------
**Problema**: escribir un programa
que le pregunta la nota al usuario,
y la clasifica como pésima, mala, buena o excelente.

El código es el siguiente:

.. literalinclude:: programas/comenta-nota.f95

Un par de cosas importantes de notar:

* Cada vez que una condición de un ``if`` es falsa,
  el flujo del programa pasa a su sección ``else``,
  donde se puede dar por hecho
  que la condición ya no se cumple.
  Por eso no es necesario volver a comprobar
  que la nota es mayor a 40,
  pues si así fuera,
  el programa jamás habría llegado a las siguientes condiciones.
* Cuando se usan varios ``if`` encadenados
  (cada uno en la sección ``else`` del anterior)
  sólo es necesario poner un ``end if`` al final
  (a diferencia de como lo hice yo en clases).
  Cada ``elseif`` puede ser considerado
  una extensión del primer ``if``.

Secuencia de Collatz
--------------------
**Problema**: escribir un programa que muestre por pantalla
la `secuencia de Collatz`_ de un número entero
ingresado por el usuario.

El algoritmo consiste simplemente en aplicar la regla
para generar la secuencia, y terminar cuando se haya llegado
al valor 1.

El código es el siguiente:

.. literalinclude:: programas/collatz.f95
.. _secuencia de Collatz: http://en.wikipedia.org/wiki/Collatz_conjecture

Números primos
--------------
**Problema**: escribir un programa que indique
si el número entero ingresado por el usuario
es primo_ o no.

El algoritmo consiste en partir suponiendo
que el número es primo,
e intentar encontrar un divisor entre `2` y `n - 1`.
Si se encuentra alguno, entonces el número no es primo.
Si no se encuentra ninguno, entonces el supuesto sigue siendo cierto.

El código es el siguiente:
  
.. literalinclude:: programas/es-primo.f95
.. _primo: http://es.wikipedia.org/wiki/N%C3%BAmero_primo 

Tarea
~~~~~
1. Escribir un programa que muestre los números primos menores que mil.
2. Escribir un programa que muestre los cien primeros números primos.

.. include:: disqus.rst

