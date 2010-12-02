Pauta del certamen 3
====================

Pregunta 1: ruteo
-----------------
Realice el ruteo del siguiente programa,
considerando que los archivos ``experimentos.dat`` y ``muestras.txt``
contienen los datos indicados.
Además, escriba cómo quedará el archivo ``resultados.dat``
después de la ejecución del código.

Archivo ``experimentos.dat``::

    exp1  3
    exp2  2
    exp3  4

Archivo ``muestras.txt``::

    4
    2
    6
    4
    1
    4
    7
    3
    1

Programa:

.. literalinclude:: programas/2010-2-c3-ruteo.f95

Solución del ruteo:

.. code-block:: none

    ┌─────────────────┐
    │    ex % ...     │ 
    ├────────┬────────┼───┬───┬──────────┐
    │ nombre │ cant...│ x │ i │ Pantalla │
    ├────────┼────────┼───┼───┼──────────┤
    │ exp1   │      3 │   │   │          │
    │        │        │   │   │ exp1     │
    │        │        │   │   │ 3        │
    │        │        │   │ 1 │          │
    │        │        │ 4 │   │          │
    │        │        │   │ 2 │          │
    │        │        │ 2 │   │          │
    │        │        │   │ 3 │          │
    │        │        │ 6 │   │          │
    │ exp2   │      2 │   │   │          │
    │        │        │   │   │ exp2     │
    │        │        │   │   │ 2        │
    │        │        │   │ 1 │          │
    │        │        │ 4 │   │          │
    │        │        │   │ 2 │          │
    │        │        │ 1 │   │          │
    │ exp3   │      4 │   │   │          │
    │        │        │   │   │ exp3     │
    │        │        │   │   │ 4        │
    │        │        │   │ 1 │          │
    │        │        │ 4 │   │          │
    │        │        │   │ 2 │          │
    │        │        │ 7 │   │          │
    │        │        │   │ 3 │          │
    │        │        │ 3 │   │          │
    │        │        │   │ 4 │          │
    │        │        │ 1 │   │          │
    └────────┴────────┴───┴───┴──────────┘

Archivo ``resultados.txt``::

    4
    6
    4
    4
    7

Pregunta 2
----------
La organización SecTuR lleva un control de la disponibilidad de habitaciones de
los hoteles de la V Región.  SecTUR almacena en un arreglo de registros los
datos de cada hotel (código del hotel, nombre del hotel, número total
habitaciones y número de habitaciones ocupadas) y en otro arreglo de registros
guarda la información referente a solicitudes de reservas de los turistas (cada
solicitud contiene los siguientes datos: código del hotel, nombre del pasajero
y su RUN).  Realizar un programa en lenguaje Fortran que:

1. Permita a un usuario llenar ambos arreglos de registros.
   Considere 25 hoteles y 50 solicitudes de reservas.
2. Muestre por pantalla el nombre del hotel
   que tiene el mayor número de habitaciones disponibles.
3. Muestre por pantalla los nombres y RUN de los pasajeros
   cuyas solicitudes de reservas no pueden ser satisfechas
   debido a falta de habitaciones.
   Suponga que el arreglo de solicitudes de reservas
   fue llenado en el mismo orden en que dichas solicitudes fueron efectuadas
   y se privilegia a quienes solicitaron primero.
   Considere además que en cada solicitud de reserva
   se solicita una única habitación.

.. literalinclude:: programas/2010-2-c3-p2.f95

Pregunta 3
----------
El archivo de registros ``playlist.dat`` contiene la información de las
canciones descargadas de la tienda online AITINUS.  Para cada canción se
conoce: nombre de la canción, nombre del artista, nombre del álbum, duración en
segundos, categoría (rock, pop o house), número de reproducciones y precio.
A partir del archivo ``playlist.dat`` desarrolle un programa que permita
realizar lo siguiente:

1. Crear los archivos ``rock.dat``, ``pop.dat`` y ``house.dat``
   los cuales contendrán todas las canciones pertenecientes
   a las categorías rock, pop y house, respectivamente.
2. Genere el archivo ``preferidas.dat`` que almacene todas las canciones
   con más de cinco reproducciones.
3. Pedir al usuario que ingrese el nombre de una categoría
   y mostrar por pantalla el nombre de las canciones de dicha categoría
   cuyo precio sea mayor a US$ 0.99.

.. literalinclude:: programas/2010-2-c3-p3.f95

.. include:: disqus.rst

