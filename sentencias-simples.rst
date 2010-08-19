Sentencias simples en Fortran
=============================

Recordemos que una **sentencia** es
cada una de las instrucciones
que componen un programa.

Las sentencias más simples
que forman un programa
son las asignaciones,
la entrada y la salida.

En un programa,
cada línea de código representa una sentencia.

Asignaciones
------------
.. index:: asignación

Las asignaciones en Fortran
son representadas con la sintaxis
que ya presentamos::

     variable = expresión

Salida
------
.. index:: salida, print

En Fortran,
un programa puede imprimir cosas en la pantalla
usando la sentencia ``print``.

La sintaxis es::

    print *, mensaje

El mensaje puede ser cualquier un valor de cualquier tipo.
Por ejemplo,
el siguiente código escribe el mensaje ``Hola mundo`` en la pantalla::

    print *, 'Hola mundo'

Una sentencia ``print`` también puede escribir
varios mensajes en la misma línea,
que hay que poner separados por comas.
El ejemplo también podría haber sido escrito así::

    print *, 'Hola ', 'mundo'
 
A veces es conveniente usar variables y expresiones como mensaje.
Por ejemplo::

    a = 2
    b = 3
    print *, 'La suma de ', a, ' y ', b, ' es ', a + b

Entrada
-------
.. index:: entrada, read

En Fortran,
un programa puede leer los datos que el usuario ingresa con el teclado
usando la sentencia ``read``.

La sintaxis es::

    read *, variable

Cuando el programa llega a una sentencia ``read``,
queda bloqueado hasta que el usuario ingrese datos
y presione enter.

El texto ingresado por el usuario
debe corresponder a la representación de un valor
del tipo de la variable.
Si esto no se cumple, ocurre un error y el programa termina.

Por ejemplo,
el siguiente código le pide al usuario
que ingrese los valores de ``a``, ``b`` y ``c``
para resolver la ecuación cuadrática::

    print *, 'Ingrese a, b y c: '
    read *, a
    read *, b
    read *, c

``a``, ``b`` y ``c`` deben haber sido declaradas previamente
con tipo ``real``.

Para llenar los datos, el usuario podría tipear::

    5
    2.5
    -3

En este caso, la variable ``a`` tomará el valor ``5.0``,
la variable ``b`` el valor ``2.5``, y
la variable ``c`` el valor ``-3.0``.
 
También se puede leer datos escritos en una única línea.
Para eso, hay que poner todas las variables en el ``read``
separadas por comas. Por ejemplo::

    print *, 'Ingrese a, b y c: '
    read *, a, b, c

En este caso,
el usuario debe tipear los tres valores en la misma línea,
separados por espacios en blanco::

    5 2.5 -3

Continuación de línea
---------------------
.. index:: continuación de línea, &

Cada sentencia debe ocupar una línea de código.
Sin embargo, a veces conviene separar una sentencia en varias líneas
para hacer el programa más claro.
Para indicar que una sentencia continúa en la línea siguiente,
hay que poner un símbolo ``&`` al final de la línea::

    a = 1 + x + x ** 2 + x ** 3 +  &
                x ** 4 + x ** 5 +  &
                x ** 6 + x ** 7

En este ejemplo, ``a`` toma el resultado de la expresión
:math:`1 + x + x^2 + x^3 + x^4 + x^5 + x^6 + x^7`.
            
.. include:: disqus.rst

