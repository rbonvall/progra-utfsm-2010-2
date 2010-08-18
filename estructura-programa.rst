Estructura de un programa Fortran
=================================

Los programas en Fortran tienen la siguiente estructura::

    program nombre_del_programa

        implicit none

        ! declaraciones de variables

        ! código del programa

    end program nombre_del_programa

El nombre del programa puede ser cualquiera,
pero siempre es conveniente pensar un nombre
que represente lo que el programa hace.

Las líneas en blanco son ignoradas.
Se puede agregar u omitir todas las que se quiera.

Las palabras que son parte del lenguaje
pueden ser escritas indistintamente
en mayúsculas o minúsculas.
Por ejemplo, es válido escribir
``PROGRAM``, ``Program`` o ``pRoGrAm``
en vez de ``program``.

El código del programa es una secuencia de
sentencias (simples y de control).

Declaración de variables
------------------------
.. index:: declaración de variables

En la sección de **declaración de variables**,
todas las variables que son utilizadas por el programa
deben ser declaradas junto con su tipo.

La sintaxis de una declaración es::

    tipo :: variable

Por ejemplo,
el siguiente programa declara tres variables,
de las cuales dos son reales y una entera:

.. literalinclude:: programas/ejemplo-declaracion.f

Cuando varias variables tienen el mismo tipo,
pueden ser especificadas en la misma declaración
separadas por comas.
Por ejemplo,
las declaraciones de ``x`` e ``y`` en el programa de arriba
pueden ser juntadas así::

    real :: x, y

Declaración de constantes
-------------------------
.. index:: declaración de constantes, constante

Además de las variables,
que pueden cambiar de valor durante la ejecución,
es posible ponerle nombres a valores inmutables
que serán utilizados por el programa.
Estos nombres se llaman **constantes**.

La declaración de una constante
tiene la siguiente sintaxis::

    tipo, parameter :: variable = valor

Por ejemplo,
el siguiente programa calcula el area y el perimetro
de un circulo cuyo radio fue ingresado por el usuario:

.. literalinclude:: programas/circulo.f
   :linenos:

En este caso,
se ha declarado la constante ``pi``
con el valor π.
Si se intentara cambiar su valor,
el compilador arrojaría un error.

Comentarios
-----------
.. index:: comentario, !

Un **comentario** es una sección del código
que es ignorada por el compilador.
Un comentario puede ser utilizado
por el programador para dejar un mensaje
en el código que puede ser útil
para alguien que tenga que leerlo en el futuro.

En Fortran, los comentarios comienzan con el símbolo ``!``.
Todo lo que esté entre el ``!`` y el final de la línea es ignorado::

    ! aquí puedo poner cualquier cosa
    b = 15

    a = 1  ! esto es un comentario

.. include:: disqus.rst

