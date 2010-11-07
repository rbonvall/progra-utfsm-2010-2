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

Los dos tipos de archivo que veremos en el ramo son:

* Los **archivos de texto**,
  que almacenan texto.
  Estos archivos pueden ser abiertos y modificados
  con un programa editor de texto,
  como el Bloc de Notas.
* Los **archivos de registros**,
  que almacenan una secuencia de datos del mismo tipo.
  Estos archivos contienen los datos en el mismo formato
  con que el computador los maneja internamente.
  Al ser abiertos con un editor de texto,
  el contenido no es mostrado en un formato entendible por humanos.

Como convención,
los archivos de registros tendrán extensión ``.dat``
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

.. .. index:: cursor (archivo)
.. 
.. Los datos de un archivo están almacenados secuencialmente,
.. y en todo momento hay una posición específica del archivo
.. (que denominaremos **cursor**)
.. en la que se puede leer o escribir datos.
.. 
.. Al abrir el archivo con ``Reset`` o ``ReWrite``,
.. el cursor es posicionado al comienzo del archivo.
.. Cada vez que se hace una operación de escritura o lectura,
.. el cursor es avanzado de manera automática
.. a la posición inmediatamente después del dato leído o escrito.
.. 
.. .. index:: end-of-file, EOF, fin de archivo
.. 
.. Al final de todo archivo
.. hay una marca especial llamada *end-of-file* (EOF)
.. que indica el final del archivo.
.. Si el cursor llega al EOF,
.. la operación de leer un dato del archivo es inválida.
.. Para saber si el cursor ha llegado al EOF,
.. se utiliza la función ``EOF(archivoLogico)``.
.. 
.. La manera en que se leen y escriben datos del archivo
.. dependen del tipo de archivo que se está utilizando.

.. include:: disqus.rst

