Archivos de texto
=================
.. index:: archivo de texto

Un **archivo de texto** (o, en Fortran, **archivo formateado**),
es un archivo cuyo contenido es una secuencia de caracteres (símbolos).

El contenido de un archivo de texto puede ser visto y modificado
usando un programa editor de texto, como el Bloc de Notas.

Si el archivo tiene el siguiente contenido:

.. code-block:: none

    10 150 18
    2 281 -4
    59 88 0
    0 -154 12

el contenido está organizado de la siguiente forma:

.. code-block:: none

    ┌─┬─┬─┬─┬─┬─┬─┬─┬─┬─┐
    │1│0│ │1│5│0│ │1│8│↵│
    ├─┼─┼─┼─┼─┼─┼─┼─┼─┼─┘
    │2│ │2│8│1│ │-│4│↵│
    ├─┼─┼─┼─┼─┼─┼─┼─┼─┘
    │5│9│ │8│8│ │0│↵│
    ├─┼─┼─┼─┼─┼─┼─┼─┼─┬─┐
    │0│ │-│1│5│4│ │1│2│↵│
    └─┴─┴─┴─┴─┴─┴─┴─┴─┴─┘

Cada caja representa el contenido de un byte_.
Cada byte almacena un caracter.
El símbolo ``↵`` representa un caracter especial llamado **salto de línea**.

.. _byte: http://es.wikipedia.org/wiki/Byte

Como cada línea, a pesar de tener tres datos,
tiene un largo variable en el archivo,
no es posible saber dónde comienza exactamente cada línea,
por lo que si se desea avanzar a una línea específica,
la única manera de hacerlo es leer línea por línea hasta llegar a ella.

Por ejemplo, la tercera línea comienza en el byte número 20.
No hay manera de calcular esta posición de antemano
sin mirar primero todas las líneas anteriores.

Abrir un archivo de texto
-------------------------
Éstas son algunas maneras de abrir un archivo de texto.

* Crear un nuevo archivo de texto::

    open (unit=10, file='a.txt', action='write', status='new')

* Abrir un archivo de texto para escribir al final de él::

    open (unit=11, file='b.txt', action='write', position='append')

* Abrir un archivo de texto para leer de él::

    open (unit=12, file='c.txt', action='read')

Leer de un archivo de texto
---------------------------
La lectura de datos de un archivo de texto
se hace línea por línea usando la sentencia ``read``,
e indicando el número de unit::

    read (10, *), variables

Cada vez que se hace una lectura,
la posición del archivo avanza a la línea siguiente,
independientemente de cuántos datos hayan sido leídos.

Para poder comprobar si se llegó al final del archivo,
hay que pasar una variable entera a la opción ``iostat``::

    read (10, *, iostat=s), variables

Escribir en un archivo de texto
-------------------------------
La escritura de datos de un archivo de texto
se hace línea por línea usando la sentencia ``write``
e indicando el número de unit::

    write (10, *), valores

.. include:: disqus.rst

