Archivos
========

.. index:: memoria RAM, almacenamiento volátil

Todos los datos que un programa utiliza durante su ejecución
se encuentran en sus variables,
que están almacenadas en la `memoria RAM`_ del computador.

La memoria RAM es un medio de almacenamiento **volátil**:
cuando el programa termina, o cuando el computador se apaga,
todos los datos se pierden para siempre.

.. index:: disco duro, almacenamiento persistente

Para que un programa pueda guardar datos de manera permanente,
es necesario utilizar un medio de almacenamiento **persistente**,
de los cuales el más importante es el `disco duro`_.

.. index:: archivo

Los datos en el disco duro están organizados en archivos_.
Un **archivo** es una secuencia de datos
almacenados en un medio persistente
que están disponibles
para ser utilizados por un programa.
Todos los archivos tienen un nombre
y una ubicación dentro del sistema de archivos del sistema operativo.

Los datos en un archivo siguen estando presentes
después de que termina el programa que lo ha creado.
Un programa puede guardar sus datos en archivos
para usarlos en una ejecución futura,
e incluso puede leer datos
desde archivos creados por otros programas.

.. _memoria RAM: http://es.wikipedia.org/wiki/Memoria_RAM
.. _disco duro: http://es.wikipedia.org/wiki/Disco_duro
.. _archivos: http://es.wikipedia.org/wiki/Archivo_(informática)

Se puede clasificar los archivos
según el formato con el que almacenan información.

* Los **archivos de texto** almacenan texto.
  Estos archivos pueden ser abiertos y modificados
  con un programa editor de texto,
  como el Bloc de Notas.
* Los **archivos binarios**
  almacenan datos usando la misma representación
  con que el computador los maneja internamente.
  Al ser abiertos con un editor de texto,
  el contenido no es entendible por humanos.

Como convención,
los archivos binarios tendrán extensión ``.dat``
y los archivos de texto, ``.txt``.

Manipulación de archivos
------------------------
Un programa no puede manipular los datos de un archivo directamente.
Para usar un archivo, un programa siempre debe realizar
los pasos indicados a continuación.

.. index:: open, abrir archivo, unit

1. Asociar el archivo a un número llamado **unit**.
   Dentro del programa,
   todas las referencias al archivo
   serán realizadas usando este número.

   La operación de asociar el archivo al unit
   se llama **abrir el archivo**,
   y se hace usando la sentencia ``open``::

     open (unit=10, file='ejemplo.txt', ...)

   Los puntos suspensivos indican que hay varias opciones
   que dependen del uso que se desea darle al archivo.
   Las opciones se muestran `mas abajo <#opciones-de-la-sentencia-open>`_.

   Los units 0, 5 y 6 no están disponibles,
   ya que suelen estar reservados por Fortran para uso interno.
   Para evitar conflictos,
   siempre usaremos units mayores o iguales que 10.

.. index:: leer de archivo, read (archivo)
.. index:: escribir en archivo, write

2. Leer o escribir datos en el archivo
   usando las sentencias ``read`` y ``write``
   con el unit apropiado::

     read (10, *), a
     write (10, *), b

.. index:: close, cerrar archivo

3. Cerrar el archivo
   una vez que se ha terminado de usarlo,
   usando la sentencia ``close``::

       close (10)

   Al cerrar el archivo,
   uno se asegura de que los cambios realizados sean guardados.
   Es importante cerrar los archivos abiertos,
   ya que las escrituras a veces no son guardadas de inmediato en el archivo
   por motivos de eficiencia.


Posición en el archivo
----------------------
.. index:: posición (archivo)

Los datos de un archivo están almacenados de manera secuencial,
y deben ser leídos de esta manera.
En todo archivo abierto, hay una única posición específica
en la que se puede leer o escribir datos.

Al abrir el archivo,
esta posición está al comienzo del archivo,
a no ser que sea abierto en modo ``append`` (que veremos más adelante).
Cada vez que se hace una operación de lectura o escritura,
**la posición es avanzada** de manera automática
inmediatamente después del dato leído o escrito.

.. index:: end-of-file, EOF, iostat

Al final de todo archivo
hay una marca especial llamada *end-of-file* (EOF)
que indica el final del archivo.
Si la posición de lectura llega al EOF,
es ilegal leer un dato del archivo.
Para saber si el cursor ha llegado al EOF,
hay que usar una forma especial de la sentencia ``read``::

    read (10, *, iostat=s), variable

Al hacer la lectura,
la variable entera ``s`` toma un valor que indica el estado de la operación.

* Si ``s == 0``, entonces la lectura fue exitosa, y el valor leído
  quedó guardado en ``variable``.
* Si ``s < 0``, significa que la lectura fue hecha más allá del final del archivo,
  por lo que ``variable`` no tiene ningún valor significativo.
* Si ``s > 0``, ocurrió otro tipo de error.

Opciones de la sentencia ``open``
---------------------------------
La sentencia ``open`` tiene dos argumentos obligatorios:

* ``unit``: el número que será asociado al archivo durante el programa, y
* ``file``: el nombre del archivo (un string).

Los siguientes son opcionales, y dependen del uso que se desee darle al archivo.

* **status**: restringe qué estado debe tener el archivo al momento de ser abierto.
  Algunos de sus valores posibles son:

  * ``status='old'``: el archivo por abrir debe existir,
  * ``status='new'``: el archivo por abrir debe no existir,
  * ``status='replace'``: si el archivo existe, será reemplazado (valor por omisión).

* **form**: indica si el archivo es de texto (legible por humanos)
  o binario (legible por el computador). Sus valores posibles son:

  * ``form='formatted'``: archivo de texto (valor por omisión).
  * ``form='unformatted'``: archivo binario.

* **position**: indica cuál será la posición inicial de lectura o escritura
  al abrir el archivo. Sus valores posibles son:

  * ``position='rewind'``: posición al inicio del archivo (valor por omisión),
  * ``position='append'``: posición al final del archivo.

* **action**: indica qué tipo de operaciones serán realizadas sobre el archivo.
  Sus valores posibles son:

  * ``action='read'``: sólo se hará lecturas,
  * ``action='write'``: sólo se hará escrituras,
  * ``action='readwrite'``: se hará lecturas y escrituras (valor por omisión).

Los valores por omisión son los que toma la opción
cuando no es especificada explícitamente.

.. include:: disqus.rst

