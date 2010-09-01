Ejercicios de la clase del 25 de agosto
=======================================

Ejercicio 1: promedio de tres números
-------------------------------------
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

.. literalinclude:: programas/promedio-3.f95

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

Ejercicio 2: promedio de n números
----------------------------------
Escriba un programa que:

* pregunte al usuario cuántos números ingresará,
* pida al usuario que ingrese los números, y
* muestre el promedio de los números.

.. code-block:: none

     Cuantos numeros ingresara?
    5
     Ingrese los numeros
    1.3
    2.7
    2
    3.14
    8
     El promedio es   3.4280000

A diferencia con el problema anterior,
ahora no es posible guardar cada valor en una variable,
ya que la cantidad de variables es fija para cada programa,
y la cantidad de números ingresados es arbitraria.

Antes de escribir cualquier línea de código,
hay que pensar en la estrategia a seguir.
Para este problema,
la mejor estrategia es ir sumando los números
a medida que van siendo ingresados,
y al final dividirlos por la cantidad.

La manera típica de sumar cosas en un programa
es usar una variable para ir acumulando el resultado.
Es importante que esta variable sea inicializada
con el valor cero antes de comenzar a sumar::

    suma = 0.0
    do ...
       suma = suma + x
    end do

Como el número de iteraciones del ciclo
es conocido de antemano (ya que el usuario lo ingresó),
conviene usar el ciclo ``do`` con contador.
También se puede hacer con ``do while``,
pero es un poco más complicado.

La solución es la siguiente:

.. literalinclude:: programas/promedio-n.f95

Aquí he ocupado la función ``real`` en el cálculo del promedio
para enfatizar que la división es una operación de números reales.
En la práctica no es necesario, ya que si un operando es real,
el otro es convertido automáticamente a real.

Problema 3: promedio de números hasta marcar el final
-----------------------------------------------------
Escriba un programa que:

* pida al usuario que ingrese varios números,
* se detenga cuando encuentre un número negativo, y
* muestre el promedio de todos los números positivos ingresados.

.. code-block:: none

     Ingrese los numeros
    1
    2
    3
    4
    -7
     El promedio es   2.5000000

Este problema tiene una dificultad adicional
en relación al anterior:
ahora la cantidad de valores no es conocida en ningún momento.

Esto conlleva a dos cambios importantes en el programa:

* ya no se puede usar el ciclo ``do`` con contador,
  sino que hay que usar ``do while``,
  ya que el ciclo termina cuando una condición deja de cumplirse;
* hay que llevar la cuenta de los números ingresados,
  para saber por cuánto hay que dividir al final.

La manera típica de contar cosas es similar a cómo se suman cosas,
salvo que la variable acumuladora debe ser entera
e ir siendo incrementada de uno en uno::

    cuenta = 0
    do ...
        cuenta = cuenta + 1
    end do

Una precaución importante
es asegurarse que el programa hace por lo menos un ``read``.
Por ejemplo, en el siguiente código,
el programa nunca entrará al ciclo
si el valor inicial de ``x`` es negativo::

    do while (x >= 0)
        read *, x
        cuenta = cuenta + 1
        suma = suma + x
    end do

Una manera de asegurarse que entre al ciclo
es asignando un valor positivo cualquiera a ``x``,
que de todos modos será borrado al hacer el ``read``.

Otra opción es hacer el primer ``read`` afuera del ciclo,
y luego hacer uno al final de él,
que es lo que hice yo:

.. literalinclude:: programas/promedio-hn.f95

Otra opción es usar un ciclo infinito,
y salir de él inmediatamente después de leer un valor
si es que éste es negativo::

    do
        read *, x
        if (x < 0) then
            exit
        end if

        cuenta = cuenta + 1
        suma = suma + x
    end do

Lecciones importantes
---------------------
* Si algo debe hacerse varias veces, debe ir dentro de un ciclo.
* Todas las variables usadas en un programa deben ser declaradas.
* Antes de escribir código, hay que pensar en el algoritmo.
  La mejor manera es pensar «¿cómo lo haría yo a mano?».
* Hay que usar notación de programación, no de matemáticas:
  :math:`\frac{a}{b^2}` está mal; ``a / (b ** 2)`` está bien.

.. include:: disqus.rst
