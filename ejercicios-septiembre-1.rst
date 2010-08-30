Ejercicios de la clase del 1 de septiembre
==========================================

Éstos son los ejercicios que haremos en la clase del miércoles 1 de septiembre.

Ejercicio 1: contar dígitos
---------------------------
Escriba un programa que cuente cuántos dígitos
tiene un número entero ingresado por el usuario.

.. code-block:: none

     Ingrese un numero entero
    142857
     El numero tiene 6 digitos

.. code-block:: none

     Ingrese un numero entero
    2010
     El numero tiene 4 digitos

Ejercicio 2: números de Fibonacci
---------------------------------
Los `números de Fibonacci`_
son una secuencia que comienza con los valores 0 y 1,
y a continuación todos los valores son la suma
de los dos anteriores:

.. math::

    \begin{align}
      F_0 &= 0 \\
      F_1 &= 1 \\
      F_k &= F_{k - 2} + F_{k - 1}, \quad k \ge 2
    \end{align}

.. _números de Fibonacci: http://es.wikipedia.org/wiki/N%C3%BAmero_de_Fibonacci

Escriba un programa que muestre
los primeros cuarenta números de Fibonacci.

.. code-block:: none

      0
      1
      1
      2
      3
      5
      8
     13
     21
     34
     55
     89
    144
    233
    ...

**Tarea para la casa**:
escriba un programa que reciba como entrada un número entero
e indique si es o no un número de Fibonacci.

.. code-block:: none

     Ingrese un numero entero
    17
     no

.. code-block:: none

     Ingrese un numero entero
    21
     si

.. include:: disqus.rst
