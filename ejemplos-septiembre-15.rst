Ejemplos de la clase del 15 de septiembre
=========================================

Ordenamiento
------------
Escriba un programa que pida al usuario diez datos
y a continuación los muestre ordenados
de menor a mayor::

     Ingrese 10 datos:
    3
    1
    5
    8
    4
    7
    2
    6
    9
    0
     Los datos ordenados son:
    0
    1
    2
    3
    4
    5
    6
    7
    8
    9

.. index:: algoritmo de ordenamiento

Hay muchos `algoritmos para ordenar`_ un arreglo de datos.
A continuación veremos uno de los más sencillos.

.. _algoritmos para ordenar: http://en.wikipedia.org/wiki/Sorting_algorithm

.. index:: ordenamiento por selección

El algoritmo de **ordenamiento por selección**
consiste en buscar el menor elemento del arreglo,
intercambiarlo con el primero,
y continuar haciendo lo mismo con el resto del arreglo.

El siguiente esquema muestra
todos los intercambios que hay que hacer.
Para cada iteración,
la flecha superior indica el próximo elemento a intercambiar,
y la flecha inferior, el menor elemento de los restantes:

.. code-block:: none

    3←   0    0    0    0    0    0    0    0    0
    1    1←   1    1    1    1    1    1    1    1
    5    5    5←   2    2    2    2    2    2    2
    8    8    8    8←   3    3    3    3    3    3
    4    4    4    4    4←   4    4    4    4    4
    7    7    7    7    7    7←   5    5    5    5
    2    2    2←   5    5    5←   7←   6    6    6
    6    6    6    6    6    6    6←   7←   7    7
    9    9    9    9    9    9    9    9    9←   8
    0←   3    3    3←   8    8    8    8←   8←   9

En la ``i``-ésima iteración,
se busca el menor elemento desde ``a(i)`` hasta ``a(N)``,
y se lo intercambia con ``a(i)``.
Para buscar la posición del menor elemento,
se necesita dos variables:
una para guardar el menor visto hasta el momento,
y otra para guardar su posición.

El código es el siguiente:

.. literalinclude:: programas/ordenamiento-seleccion.f95

**Tarea**:
escriba un programa que ordene un arreglo de palabras
desde la más larga hasta la más corta:

.. code-block:: none

     Ingrese 4 palabras:
    perro
    zapato
    nuez
    paralelepípedo

     Las palabras ordenadas por largo son:
    paralelepípedo
    zapato
    perro
    nuez

Liga de fútbol
--------------
Escriba un programa que permita ingresar
los equipos de un campeonato de fútbol y
los resultados de los partidos entre ellos,
y a continuación muestre
cuántos puntos y qué diferencia de goles
tiene cada equipo:

.. code-block:: none

     Ingrese los nombres de los equipos:
    España
    Suiza
    Honduras
    Chile

     Ingrese los resultados
     España-Suiza
    0 1
     España-Honduras
    3 0
     España-Chile
    2 1
     Suiza-Honduras
    0 0
     Suiza-Chile
    0 1
     Honduras-Chile
    0 1

     Equipo             Pts         Dif
     España               6           3
     Suiza                4           0
     Honduras             1          -4
     Chile                6           1


(Explicación para no futboleros:
todos los pares de equipos juegan un partido entre sí;
el que gana, recibe 3 puntos;
si empatan, ambos reciben 1 punto;
la diferencia de goles son el total de goles anotados
menos el total de goles recibidos).

Primero que todo,
definamos el número de equipos como una constante::

    integer, parameter :: NR_EQUIPOS = 4

Los nombres de los equipos
hay que guardarlos en un arreglo de strings::

    character(len=10), dimension(NR_EQUIPOS) :: equipos

Usualmente,
los resultados de partidos se escriben en una tabla como ésta:

.. code-block:: none

                  j =   1     2     3     4
                     +-----+-----+-----+-----+
                     | Esp | Sui | Hon | Chi |
          +----------+-----+-----+-----+-----+
    i = 1 | España   |       0-1   3-0   2-1 |
        2 | Suiza    |             0-0   0-1 |
        3 | Honduras |                   0-1 |
        4 | Chile    |                       |
          +----------+-----------------------+

En un programa,
esta tabla se puede representar en un arreglo de tres dimensiones.
Los dos primeros índices (``i`` y ``j``)
representan qué equipos estan jugando un partido,
y la tercera dimensión tiene dos elementos,
que son los goles anotados por cada equipo en el partido::

    integer, dimension(NR_EQUIPOS, NR_EQUIPOS, 2) :: goles

En este ejemplo, 
cada par de equipos juega sólo un partido entre sí,
por lo que podemos hacer siempre que ``i < j``.

Una vez que los resultados están ingresados,
hay que sumar los puntos y los goles,
que estarán cada uno en un arreglo.
Como en toda suma, hay que inicializar los valores en cero.

Usando dos ciclos ``do`` anidados
(uno para ``i`` y otro para ``j``),
revisamos lo que pasó en cada partido.
Primero comparamos ``goles(i, j, 1)`` y ``goles(i, j, 2)``
para ver quién ganó, y asignamos los puntos correspondientes.
Después, actualizamos la diferencia de goles de ambos equipos.

El programa terminado es el siguiente:

.. literalinclude:: programas/liga-futbol.f95

**Tarea**: hacer que la tabla de posiciones
sea mostrada ordenada por puntaje de mayor a menor;
los equipos empatados en puntos
deben ser ordenados por diferencia de goles
de mayor a menor:

.. code-block:: none

     España               6           3
     Chile                6           1
     Suiza                4           0
     Honduras             1          -4

**Tarea**: modificar el programa
para que funcione para campeonatos
de ida y vuelta
(es decir, cada par de equipos
juega dos partidos entre sí).

Búsqueda en arreglos bidimensionales
------------------------------------
En `la clase pasada`_
vimos cómo buscar un elemento
en un arreglo de una dimensión.

.. _la clase pasada: ejemplos-septiembre-15.html

En más dimensiones hay una dificultad adicional::

    do i = 1, N
        do j = 1, M
            if (a(i, j) == algo) then
                encontrado = .TRUE.
                exit
            end if
        end do
    end do

Al usar ``exit`` para terminar la búsqueda,
sólo se está terminando el ciclo interno (el con ``j``).
El ciclo externo seguirá iterando,
por lo que se perderá el valor que ``i`` tenía
al momento de encontrar el elemento buscado.

Hay varias maneras de solucionar el problema,
pero la más simple es no preocuparse de terminar la búsqueda,
y guardar los valores de ``i`` y ``j``
para usarlos más adelante::

    do i = 1, N
        do j = 1, M
            if (a(i, j) es lo que busco) then
                i_buscado = i
                j_buscado = j
            end if
        end do
    end do

    print *, 'El elemento buscado está en la posición ', &
             i_buscado, ',', j_buscado

Por supuesto,
también se podría hacer lo mismo
con los arreglos de una dimensión::

    do i = 1, N
        if (a(i) es lo que busco) then
            i_buscado = i
        end if
    end do

.. include:: disqus.rst

