Strings
=======
.. index:: string

Un **string** es un tipo de datos para representar texto.

Al igual que los arreglos,
una variable de tipo string
debe tener un tamaño fijo durante todo el programa,
que es el máximo largo en caracteres del texto
que puede contener.

La sintaxis para declarar un string de largo ``N`` es::

    character(len=N) :: nombre

Por ejemplo,
el siguiente programa pregunta el nombre del usuario
y lo saluda:

.. literalinclude:: programas/hola.f95

Los strings literales
se representan entre comillas simples::

    nombre = 'Fulanito'

El texto contenido por una variable de tipo string
siempre tiene el mismo largo que el declarado.
Si se asigna un texto más corto,
es rellenado con espacios.
Por ejemplo,
si la variable ``nombre`` es un string de largo 10,
entonces la salida del siguiente código::

    nombre = 'Pepe'
    print *, 'Hola ', nombre, '!'

es la siguiente:

.. code-block:: none

    Hola Pepe      !

Si se intenta almacenar un string
cuyo largo es mayor a la capacidad de la variable,
el valor es cortado para que entre.
Por ejemplo,
en el siguiente programa,
si la entrada es ``Guadalupe``,
la salida será ``Guad``::

    program muy_corto
        implicit none
        character(len=4) :: s
        read *, s
        print *, s
    end program muy_corto

Funciones trim y len_trim
-------------------------
.. index:: trim, len_trim

Para obtener el valor de un string
sin los espacios de relleno al final
hay que usar la función ``trim``::

    nombre = 'Pepe'
    print *, 'Hola', trim(nombre), '!'

La salida será:

.. code-block:: none

    Hola Pepe!

El largo de un texto
sin incluir los espacios del final
puede ser obtenido con la función ``len_trim``::

    character(len=20) :: texto
    texto = 'paralelepipedo'
    print *, len_trim('')       ! la salida es 0
    print *, len_trim('texto')  ! la salida es 5
    print *, len_trim(texto)    ! la salida es 14

Leer una línea completa
-----------------------
Cuando se usa ``read`` para pedir un string al usuario,
el texto leído sólo incluye hasta el primer espacio.
Por ejemplo, si el usuario ingresa el texto ``Perico Los Palotes``,
la variable sólo contendrá el valor ``'Perico'``.

La manera de leer un string hasta el final de la línea,
incluyendo los espacios, es reemplazando el asterisco de la sentencia ``read``
con el indicador de formato ``'(A)'``::

    read '(A)', nombre

Concatenación de strings
------------------------
.. index:: concatenación

La **concatenación** de strings
es la operación de pegar dos strings
uno después del otro.
Por ejemplo,
al concatenar ``'hola '`` y ``'mundo'``,
se obtiene el string ``'hola mundo'``.

En Fortran, la concatenación de strings
es representada usando el operador ``//``::

    a = 'perro'
    b = 'gato'
    c = trim(a) // trim(b)
    print *, c    ! imprime 'perrogato'

Substrings
----------
.. index:: substring

Uno puede extraer una sección de un string,
obteniendo un nuevo string como resultado,
usando la siguiente sintaxis::

    string(inicio:final)

donde ``inicio`` y ``final``
son números enteros indicando las posiciones de inicio y de término
del substring dentro del string.

El siguiente programa
muestra los resultados de algunos ejemplos de substrings:

.. literalinclude:: programas/substring.f95

.. include:: disqus.rst


