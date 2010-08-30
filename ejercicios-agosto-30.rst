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

Como siempre, hay que pensar bien el algoritmo
antes de escribir cualquier línea de código.

Una opción puede ser guardar los valores
en diez variables, y luego comenzar a comparar de a pares
para encontrar el menor y el mayor.
Ésta no es la manera más simple ni la más elegante,
e impide aplicar el mismo programa
cuando el número de valores es distinto de 10.

La alternativa elegante es la siguiente.
Desde el principio, recordar siempre cuáles son
el menor y el mayor valor visto hasta el momento.
Cada vez que se lee un nuevo dato,
se actualizan ambos valores en caso que sea
el nuevo mayor o el nuevo menor.

El ciclo principal queda así::

    do i = 1, 10
        read *, x

        if (x < menor) then
            menor = x
        end if

        if (x > mayor) then
            mayor = x
        end if
    end do

El problema que queda por resolver es
cómo inicializar ``mayor`` y ``menor``,
pues ambos ya deben tener un valor
para poder ser usados al entrar al ciclo por primera vez.

Una solución simple es
inicializar ``menor`` con un valor positivo muy grande,
y ``mayor`` con un valor negativo muy grande.
Así el primer valor de ``x`` leído
será automáticamente el menor y el mayor.

En clases yo ocupé los valor ``1e300`` y ``-1e300``,
¡pero estos valores no son válidos!, ya que el rango de las variables
de tipo real llega aproximadamente hasta ``3.4e38``
(esto es :math:`3,4\times 10^{38}`).

Afortunadamente existe una función llamada ``huge``
que entrega el mayor valor posible que puede tomar una variable.
La inicialización puede hacerse así::

    menor =  huge(x)
    mayor = -huge(x)

Otra alternativa es leer el primer valor de ``x`` fuera del ciclo,
inicializar ``mayor`` y ``menor`` con el valor de ``x``
y luego hacer el ciclo desde 2 hasta 10.
El programa completo usando esta estrategia es el siguiente:

.. literalinclude:: programas/mayor-y-menor-b.f95

En este programa definimos una constante ``N``
para referirnos siempre a la cantidad de elementos.
Esto permite adecuar el mismo programa
para cualquier cantidad de datos
tan sólo con modificar el valor de ``N`` en la declaración.

En clases ruteamos el programa usando ``N = 4``
y usando como entrada los valores ``2``, ``1``, ``4`` y ``3``:

    +---------+---------+---------+---------+----------------------+
    |``x``    |``menor``|``mayor``|``i``    | Salida estándar      |
    +=========+=========+=========+=========+======================+
    |     2.0 |         |         |         |                      |
    +---------+---------+---------+---------+----------------------+
    |         |     2.0 |         |         |                      |
    +---------+---------+---------+---------+----------------------+
    |         |         |     2.0 |         |                      |
    +---------+---------+---------+---------+----------------------+
    |         |         |         |       2 |                      |
    +---------+---------+---------+---------+----------------------+
    |     1.0 |         |         |         |                      |
    +---------+---------+---------+---------+----------------------+
    |         |     1.0 |         |         |                      |
    +---------+---------+---------+---------+----------------------+
    |         |         |         |       3 |                      |
    +---------+---------+---------+---------+----------------------+
    |     4.0 |         |         |         |                      |
    +---------+---------+---------+---------+----------------------+
    |         |         |     4.0 |         |                      |
    +---------+---------+---------+---------+----------------------+
    |         |         |         |       4 |                      |
    +---------+---------+---------+---------+----------------------+
    |     3.0 |         |         |         |                      |
    +---------+---------+---------+---------+----------------------+
    |         |         |         |         | ``El menor es 1.0``  |
    +---------+---------+---------+---------+----------------------+
    |         |         |         |         | ``El mayor es 4.0``  |
    +---------+---------+---------+---------+----------------------+

Control 2: ruteo
----------------
Rutee el siguiente programa:

.. literalinclude:: programas/ruteo-2010-2-control-2.f95

He aquí el ruteo:

    +-----------+-----------+-----------+-----------+----------------------+
    |``p``      |``i``      |``a``      |``s``      | Salida estándar      |
    +===========+===========+===========+===========+======================+
    |           |           |         4 |           |                      |
    +-----------+-----------+-----------+-----------+----------------------+
    |         0 |           |           |           |                      |
    +-----------+-----------+-----------+-----------+----------------------+
    |           |           |           |``.TRUE.`` |                      |
    +-----------+-----------+-----------+-----------+----------------------+
    |           |         1 |           |           |                      |
    +-----------+-----------+-----------+-----------+----------------------+
    |         1 |           |           |           |                      |
    +-----------+-----------+-----------+-----------+----------------------+
    |           |           |           |``.FALSE.``|                      |
    +-----------+-----------+-----------+-----------+----------------------+
    |           |         2 |           |           |                      |
    +-----------+-----------+-----------+-----------+----------------------+
    |           |           |           |``.TRUE.`` |                      |
    +-----------+-----------+-----------+-----------+----------------------+
    |           |         3 |           |           |                      |
    +-----------+-----------+-----------+-----------+----------------------+
    |         2 |           |           |           |                      |
    +-----------+-----------+-----------+-----------+----------------------+
    |           |           |           |``.FALSE.``|                      |
    +-----------+-----------+-----------+-----------+----------------------+
    |           |         4 |           |           |                      |
    +-----------+-----------+-----------+-----------+----------------------+
    |           |           |           |``.TRUE.`` |                      |
    +-----------+-----------+-----------+-----------+----------------------+
    |           |         5 |           |           |                      |
    +-----------+-----------+-----------+-----------+----------------------+
    |         3 |           |           |           |                      |
    +-----------+-----------+-----------+-----------+----------------------+
    |           |           |           |``.FALSE.``|                      |
    +-----------+-----------+-----------+-----------+----------------------+
    |           |         6 |           |           |                      |
    +-----------+-----------+-----------+-----------+----------------------+
    |           |           |           |``.TRUE.`` |                      |
    +-----------+-----------+-----------+-----------+----------------------+
    |           |         7 |           |           |                      |
    +-----------+-----------+-----------+-----------+----------------------+
    |         4 |           |           |           |                      |
    +-----------+-----------+-----------+-----------+----------------------+
    |           |           |           |``.FALSE.``|                      |
    +-----------+-----------+-----------+-----------+----------------------+
    |           |           |           |           |                    4 |
    +-----------+-----------+-----------+-----------+----------------------+

.. Tarea
.. ~~~~~
..  Pruebe el programa con distintos valores de ``a``.
..  ¿Qué hace el programa? ¿Cómo lo logra?

.. include:: disqus.rst
