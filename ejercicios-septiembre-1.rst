Ejercicios de la clase del 1 de septiembre
==========================================

Ejercicio 1: invertir dígitos
---------------------------
Escriba un programa que invierta los dígitos
de un número entero ingresado por el usuario.

.. code-block:: none

     Ingrese un numero entero
    142857
     El numero invertido es 758241

.. code-block:: none

     Ingrese un numero entero
    2010
     El numero invertido es 102

(Ya voy a redactar la explicación)

.. literalinclude:: programas/invertir-digitos.f95


Ejercicio 2: palíndromos
------------------------
Escriba un programa que reciba un número entero
e indique si es palíndromo_ o no.

.. code-block:: none

     Ingrese un numero entero
    14241
           14241 si es palindromo

.. code-block:: none

     Ingrese un numero entero
    24007
           24007 no es palindromo

.. _palíndromo: http://es.wikipedia.org/wiki/Pal%C3%ADndromo

Un palíndromo es un número que se lee igual
de izquierda a derecha y de derecha a izquierda.

(Ya voy a redactar la explicación)

.. literalinclude:: programas/num-palindromo.f95

Ejercicio 3: números de Fibonacci
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
