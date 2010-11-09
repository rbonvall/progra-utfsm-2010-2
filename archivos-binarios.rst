Archivos binarios
=================
.. index:: archivo binario

Un **archivo binario** (o, en Fortran, **archivo sin formato**),
es un archivo cuyo contenido usa exactamente la misma representación
que utiliza el computador internamente para representar la información.

El contenido de un archivo binario
no está pensado para ser entendible por humanos.
Si es abierto con el Bloc de Notas,
generalmente se verá sólo símbolos ininteligibles.

Si el archivo tiene el siguiente contenido:

.. code-block:: none

    10 150 18
    2 281 -4
    59 88 0
    0 -154 12

entonces los datos están organizados de la siguiente forma:

.. code-block:: none

    ┌─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┐
    │     10│    150│     18│
    ├─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┤
    │      2│    281│     -4│
    ├─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┤
    │     59│     88│     0 │
    ├─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┤
    │      0│   -154│     12│
    └─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┘

Cada caja representa el contenido de un byte.
Internamente,
muchos computadores representan los números enteros usando cuatro bytes.
Cada byte está formado por ocho bits_ (unos o ceros).
Las diferentes combinaciones de los treinta y dos bits
permiten representar `2^{32}` números diferentes.

.. _bits: http://es.wikipedia.org/wiki/Bit

.. index:: archivo de registo

En la asignatura usaremos un tipo especial de archivo binario
llamado **archivo de registros**.  Un archivo de registros
es un archivo binario cuyo contenido son exclusivamente
valores del mismo tipo de datos, uno después del otro.
El ejemplo de arriba es un archivo de registros,
donde cada registro tiene tres enteros.

Una ventaja de este tipo de archivos
es que todos los registros tienen el mismo largo
(en el ejemplo, doce bytes)
por lo que es posible calcular la posición
de cualquier registro deseado.

Abrir un archivo binario
------------------------
Un archivo binario debe ser abierto usando la opción
``form='unformatted'``:

* Crear un nuevo archivo binario::

    open (unit=10, file='a.txt', action='write', &
          status='new', form='unformatted')

* Abrir un archivo binario para escribir al final de él::

    open (unit=11, file='b.txt', action='write', &
          position='append', form='unformatted')

* Abrir un archivo binario para leer de él::

    open (unit=12, file='c.txt', action='read', &
          form='unformatted')

Leer de un archivo binario
--------------------------
La lectura de datos de un archivo binario
se hace dato por dato
usando la sentencia ``read`` **sin asterisco**,
e indicando el número de unit::

    read (10), variables

Cada vez que se hace una lectura,
la posición del archivo avanza al dato siguiente.

La opción ``iostat`` también puede ser usada
con archivos binarios::

    read (10, iostat=s), variables

Escribir en un archivo binario
------------------------------
La escritura de datos de un archivo de texto
se hace línea dato por dato usando la sentencia ``write``
**sin asterisco** e indicando el número de unit::

    write (10), valores

.. include:: disqus.rst

