Arreglos
========
.. index:: arreglo

Un **arreglo** es un tipo de datos
que contiene varios elementos de un mismo tipo.

.. index:: índice

Cada elemento tiene asociado un **índice**,
y puede ser tratado como si fuera una variable.
La cantidad de elementos que tiene un arreglo es fija,
y no puede cambiar durante la ejecución del programa.

La sintaxis para declarar un arreglo es::

    tipo, dimension(tamaño) :: nombre

La sintaxis para referirse al elemento de índice ``i``
de un arreglo ``x`` es::

    x(i)

Por ejemplo,
el siguiente programa utiliza un arreglo
para guardar seis notas ingresadas por el usuario
y luego calcular el promedio:

.. literalinclude:: programas/promedio-arreglo-1.f95
   :linenos:

En este programa,
se ha declarado un arreglo de enteros de tamaño 6,
cuyos elementos están indexados desde el 1 hasta el 6.

El ejemplo podría perfectamente estar escrito
usando seis variables ``a``, ``b``, ``c``, ``d``, ``e`` y ``f``
para guardar las notas.
La ventaja de usar arreglos es que se puede usar ciclos
para recorrer todos los elementos.
A continuación reescribiremos el ejemplo
para aprovechar esta ventaja.
Además, definiremos el número de notas como una constante:

.. literalinclude:: programas/promedio-arreglo-3.f95
   :linenos:

Otra ventaja de usar arreglos
es que el mismo programa puede ser utilizado
para conjuntos de datos de cualquier tamaño
sin requerir mayores modificaciones.
El programa para promediar seis notas
es exactamente igual al que se usaría para promediar treinta notas.
Sólo basta con modificar el valor de la constante ``N``.

Arreglos multidimensionales
---------------------------
.. index:: arreglo multidimensional

Un **arreglo multidimensional** es un arreglo
cuyos elementos tienen más de un índice.

El caso más simple son los arreglos bidimensionales,
que tienen dos índices,
y son útiles para representar datos con formato tabular,
como tablas y matrices.

Los arreglos multidimensionales son declarados
indicando los tamaños a lo largo de cada una de las dimensiones,
separados por comas.
Por ejemplo, un arreglo de enteros de 5 × 3 es declarado así::

    integer, dimension(5, 3) :: a
 
Este arreglo tiene quince elementos: desde ``a(1, 1)`` hasta ``a(5, 3)``.

La manera típica de recorrer los elementos de un arreglo multidimensional
es usar varios ciclos ``do`` anidados, uno por cada dimension.
Por ejemplo,
el siguiente programa suma todos los elementos del arreglo ``a``
declarado en el ejemplo anterior::

    suma = 0
    do i = 1, 5
        do j = 1, 3
            suma = suma + a(i, j)
        end do
    end do

Cada índice no tiene un significado por sí mismo.
El programador puede interpretar cada uno como quiera,
siempre que sea consistente a lo largo del programa.
Por ejemplo, para los elementos ``a(i, j)`` de un arreglo bidimensional,
uno puede interpretar ``i`` como las filas de una tabla
y ``j`` como las columnas, pero hacerlo al revés también es correcto.

Inicialización de arreglos
--------------------------
.. index:: inicialización de arreglos

A veces un programa necesita tener un arreglo
cuyos valores están dados de antemano,
por lo que no corresponde que los ingrese el usuario.

Para estos casos,
es posible inicializar el arreglo durante la declaración.
El siguiente ejemplo ilustra la sintaxis
inicializando un arreglo con la cantidad de días
que tienen los meses del año:

.. literalinclude:: programas/dias-mes.f95

Índices arbitrarios
-------------------
.. index:: índice arbitrario

Es posible declarar un arreglo de tamaño ``N``
de modo que sus índices no vayan desde 1 hasta ``N``,
sino que tomen otros valores.

Por ejemplo,
podemos usar un arreglo bidimensional
para guardar los totales mensuales de lluvia caída
de los últimos cinco años.
No es muy conveniente que el índice que representa el año
tome los valores de 1 a 5.
Para hacer que los índices vayan desde 2006 hasta 2010,
la declaración se hace así::

    real, dimension(2006:2010, 12) :: lluvia

Para asignar el total de lluvia caída de agosto de 2010, se hace así::

    lluvia(2010, 8) = 13.4

Secciones de arreglos
---------------------
Para referirse a una sección de un arreglo
que corresponde a un arreglo de menor dimensión
se puede usar dos puntos (``:``) en lugar del índice
para indicar que se desea obtener todos los elementos
a lo largo de la dimensión correspondiente.

Por ejemplo,
en el arreglo de los totales de lluvia por mes,
``lluvia(2007, :)`` es el arreglo unidimensional
con los doce totales mensuales del año 2007,
mientras que ``lluvia(:, 9)`` es el arreglo unidimensional
de tamaño cinco con los totales de lluvia de septiembre de cada año.

Operaciones sobre arreglos
--------------------------
.. index:: sum (función)

Hay algunas operaciones que pueden ser usadas sobre arreglos.
Por ejemplo, la función ``sum`` recibe un arreglo como parámetro
y entrega como resultado la suma de los elementos del arreglo::

    real, dimension(5) :: a = (/6, 1, -4, 3, 0/)

    print *, sum(a)    ! la salida es 6.0

Si una operación binaria es aplicada sobre
un arreglo y un valor escalar,
entonces la operación es aplicada sobre todos los elementos del arreglo.
Por ejemplo, si ``a`` es un arreglo,
entonces el resultado de la expresión ``a * 2``
es el arreglo cuyos valores son el doble
del elemento respectivo de ``a``.

Si una operación binaria es aplicada sobre dos arreglos,
entonces la operación es aplicada elemento a elemento.
Por ejemplo, si ``a`` y ``b`` son arreglos,
``a * b`` es el arreglo de los productos de los elementos respectivos
de ``a`` y ``b``.

Entrada de elementos de un arreglo
----------------------------------
Para que el usuario pueda ingresar
todos los elementos de un arreglo en una misma línea de entrada,
se puede usar la sintaxis llamada **do implícito**::

    read *, (arreglo(i), i = 1, N)

Cuando en el programa aparece esta sentencia,
significa que el usuario debe ingresar, en la misma línea,
todos los ``N`` valores del arreglo separados por espacios.

.. include:: disqus.rst

