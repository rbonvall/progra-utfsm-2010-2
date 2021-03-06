Ejercicios de la clase del 1 de septiembre
==========================================

Ejercicio 1: invertir dígitos
-----------------------------
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

Para resolver este problema,
lo que hay que lograr hacer es
extraer los dígitos del número uno por uno
para poder ir construyendo el número invertido:

.. code-block:: none

    142857 → 0
     14285 → 7
      1428 → 75
       142 → 758
        14 → 7582
         1 → 75824
         0 → 758241

El último dígito de un número entero puede ser obtenido
calculando el resto de su división por 10;
los dígitos faltantes pueden ser obtenidos
dividiendo el número por 10::

    n = 142857
    print *,     n / 10    !  14285
    print *, mod(n,  10)   !  7

¿Cuántas veces debe hacerse este paso?
El computador no sabe cuántos dígitos tiene el número.
Lo más simple es ir dividiendo ``n`` hasta llegar a 0.
Por lo tanto, hay que usar un ciclo ``do while``
y no un ciclo ``do`` con contador.

Cada vez que el último dígito de ``n`` es calculado,
hay que ponerlo al final del número invertido.
La manera de hacerlo es la siguiente::

    invertido = invertido * 10 + ultimo_digito

El programa queda así:

.. literalinclude:: programas/invertir-digitos.f95

Si ruteamos el programa con la entrada ``142857``,
el resultado es éste:

    +--------+--------+--------+-------------------------------+
    |``n``   |``u_d`` |``inv`` | Salida estándar               |
    +========+========+========+===============================+
    | 142857 |        |        |                               |
    +--------+--------+--------+-------------------------------+
    |        |        |      0 |                               |
    +--------+--------+--------+-------------------------------+
    |        |      7 |        |                               |
    +--------+--------+--------+-------------------------------+
    |        |        |      7 |                               |
    +--------+--------+--------+-------------------------------+
    |  14285 |        |        |                               |
    +--------+--------+--------+-------------------------------+
    |        |      5 |        |                               |
    +--------+--------+--------+-------------------------------+
    |        |        |     75 |                               |
    +--------+--------+--------+-------------------------------+
    |   1428 |        |        |                               |
    +--------+--------+--------+-------------------------------+
    |        |      8 |        |                               |
    +--------+--------+--------+-------------------------------+
    |        |        |    758 |                               |
    +--------+--------+--------+-------------------------------+
    |    142 |        |        |                               |
    +--------+--------+--------+-------------------------------+
    |        |      2 |        |                               |
    +--------+--------+--------+-------------------------------+
    |        |        |   7582 |                               |
    +--------+--------+--------+-------------------------------+
    |     14 |        |        |                               |
    +--------+--------+--------+-------------------------------+
    |        |      4 |        |                               |
    +--------+--------+--------+-------------------------------+
    |        |        |  75824 |                               |
    +--------+--------+--------+-------------------------------+
    |      1 |        |        |                               |
    +--------+--------+--------+-------------------------------+
    |        |      1 |        |                               |
    +--------+--------+--------+-------------------------------+
    |        |        | 758241 |                               |
    +--------+--------+--------+-------------------------------+
    |      0 |        |        |                               |
    +--------+--------+--------+-------------------------------+
    |        |        |        | El número invertido es 758241 |
    +--------+--------+--------+-------------------------------+

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

Habiendo hecho el ejercicio anterior,
este problema es trivial:
basta con comparar el número original con su versión invertida.
Si (y sólo si) son iguales, entonces el número es un palíndromo.

La única precaución que hay que tener es la de
guardar una copia del número ingresado para poder compararla al final,
pues el proceso de invertir ``n`` hace que el valor se pierda.

El programa es el siguiente:

.. literalinclude:: programas/num-palindromo.f95

Ejercicio 3: números de Fibonacci
---------------------------------
Los `números de Fibonacci`_
son una secuencia que comienza con los valores 0 y 1,
y a continuación todos los valores son la suma
de los dos anteriores:

.. math::

    F_0 &= 0 \\
    F_1 &= 1 \\
    F_k &= F_{k - 2} + F_{k - 1}, \quad k \ge 2

.. _números de Fibonacci: http://es.wikipedia.org/wiki/N%C3%BAmero_de_Fibonacci

Escriba un programa que pregunte al usuario
cuántos números de Fibonacci desea,
y los muestre por pantalla:

.. code-block:: none

     Cuantos numeros de Fibonacci desea?
    10
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

La regla para generar los números de Fibonacci
requiere siempre sumar los dos últimos valores.
Por lo tanto,
en cada etapa del procedimiento
es necesario recordar los dos últimos números.
Nos referiremos a ellos como el número ``actual``
y el número ``anterior``.

Los dos primeros valores son siempre 0 y 1.
Por lo tanto,
podemos comenzar directamente imprimiéndolos::

    print *, 0
    print *, 1

Por simplicidad,
supondremos que el usuario siempre ingresa una cantidad ``n``
mayor que dos.
Si queremos que el programa esté correcto en todos los casos,
deberíamos hacer lo siguiente::

    if (n > 0) then
        print *, 0
    end if
    if (n > 1) then
        print *, 1
    end if

Para generar el resto de los números,
debemos describir el proceso
en que ``anterior`` pasa a tomar el valor que tenía ``actual``,
y ``actual`` pasa a tener la suma de ambos.

Una aproximación ingenua sería la siguiente::

    anterior = actual
    actual = anterior + actual

Este cambio es incorrecto, ya que después de la primera asignación
``anterior`` pierde el valor que tenía previamente,
por lo que la segunda asignación ya no hace lo que esperamos.

Si cambiamos el orden de las asignaciones,
ocurre lo mismo::

    actual = anterior + actual
    anterior = actual

Ahora es el valor de ``actual`` el que se pierde antes de usarlo.
Esta confusa situación ocurre siempre que se desea intercambiar
el valor de dos variables.
La manera de solucionarlo es introduciendo una variable adicional
para guardar el resultado intermedio.
A esta variable la denominaremos ``suma``::

    suma = anterior + actual
    anterior = actual
    actual = suma

El programa completo es el siguiente:

.. literalinclude:: programas/fibonacci.f95

El ciclo ``do`` parte desde 3
porque los primeros dos valores
ya fueron mostrados antes.

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
