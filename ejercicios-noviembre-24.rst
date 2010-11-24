Ejercicios de la clase del 24 de noviembre
==========================================

Concurso telefónico
-------------------
Se realizó un concurso telefónico
para elegir al deportista que llevará la bandera de Chile
en los Juegos Olímpicos de Beijing.
Hay tres candidatos, y las llamadas están ingresadas
en el archivo ``concurso.dat``.
Cada registro contiene el nombre de quien llamó,
su número de teléfono
y el número del deportista por quien votó.

**Problema:** escriba un programa
que muestre el total de votos de cada deportista
y el número del deportista ganador.

Lo que debe hacer este programa es recorrer los datos del archivo
e ir contando los votos que tiene cada deportista.
Siempre que hay que contar cosas,
se hace de la misma manera:

* se usa un contador por cada cosa que se desea contar,
* se inicializan los contadores con el valor cero, y
* cada vez que se encuentra lo que se quiere contar,
  se incrementa en uno el contador correspondiente.

Como el archivo es binario y de registros,
hay que crear el tipo de datos
para poder declarar la variable en la que quedará guardado
cada dato leído::

    type :: llamada
        character(len=20) :: nombre
        integer :: telefono
        integer :: voto
    end type llamada

    type(llamada) :: ll

Declaramos e inicializamos los contadores,
uno para cada deportista::

    integer :: d1, d2, d3
    d1 = 0
    d2 = 0
    d3 = 0

Llevar la cuenta es fácil:
se lee un dato del archivo,
y se aumenta el contador correspondiente al voto::

    do
        read (10, iostat=st), ll
        if (st /= 0) exit

        if (ll % voto == 1) then
            d1 = d1 + 1
        else if (ll % voto == 2) then
            d2 = d2 + 1
        else if (ll % voto == 3) then
            d3 = d3 + 1
        end if
    end do

Otra alternativa es usar un arreglo de contadores::

    integer, dimension(3) :: d
    d = 0

El ciclo en este caso queda mucho más simple::

    do
        read (10, iostat=st), ll
        if (st /= 0) exit

        d(ll % voto) = d(ll % voto) + 1
    end do

Una vez terminada la lectura del archivo,
hay que ver qué deportista tiene más votos.
La función ``max`` permite obtener
cuál es el valor máximo entre varios números::

    if (max(d1, d2, d3) == d1) then
        print *, 'El ganador es el deportista 1'
    else
        ! ...
    end if

No confundir ``max`` con ``maxval``:
la primera funciona con varios valores,
y la segunda sólo con un arreglo.

El programa completo es el siguiente:

.. literalinclude:: programas/abanderado.f95

**Tarea**: modificar el programa
para que indique si hay un empate en el primer lugar.

Aeropuertos
-----------
Un aeropuerto tiene coordenadas `x` e `y` y un código.
El archivo ``ruta.dat`` tiene una lista de aeropuertos
por los que pasa un avión.

**Problema:** escriba un programa que muestre
la distancia total recorrida por el avión.

Primero, hay que crear el tipo del registro
para poder leer los datos del archivo::

    type :: aeropuerto
        real :: x, y
        character(len=3) :: codigo
    end type aeropuerto

Para calcular la distancia total,
hay que sumar las distancias
entre cada par de ciudades consecutivas del archivo.
Como siempre,
para sumar cosas hay que tener una variable
inicializada con el valor cero,
e ir sumándole las distancias parciales.

A diferencia de la mayoría de los ejercicios de archivos,
aquí no debemos usar uno por uno cada registro,
sino que siempre necesitamos un par de ellos,
entre los que se calculará la distancia.

Por lo tanto,
necesitamos dos variables:
una para el aeropuerto leído previamente
y otro para el leído más recientemente::

    type(aeropuerto) :: anterior, actual

Como el primer dato no tiene un predecesor,
hay que comenzar los cálculos desde el segundo.
Para ello, hay que hacer el primer ``read`` fuera del ciclo,
para que sirva de valor ``anterior``
para el segundo aeropuerto del archivo.
Al final de cada iteración,
hay que hacer que el valor ``actual``
pase a ser el ``anterior``::

    read (10), anterior
    do
        read (10, iostat=st), actual
        if (st /= 0) exit

        dist = dist + distancia(actual, anterior)
        anterior = actual
    end do

El programa completo es el siguiente:

.. literalinclude:: programas/ruta-avion.f95

Para probar la solución,
puede usar el siguiente código para crear un archivo de prueba::

    open (unit=10, file='ruta.dat', form='unformatted', action='write')
    write (10), aeropuerto( 0.2, -3.1, 'SCL')
    write (10), aeropuerto( 0.3, -2.8, 'EZE')
    write (10), aeropuerto( 0.4, -2.5, 'SDU')
    write (10), aeropuerto(-0.4,  0.3, 'BOG')
    write (10), aeropuerto(-0.2,  1.5, 'PTY')
    write (10), aeropuerto( 1.3,  3.2, 'MIA')
    close (10)

Mezcla de números
-----------------
Los archivos ``a.txt`` y ``b.txt``
tienen muchos números ordenados de menor a mayor.

**Problema:** Escriba un programa que cree un archivo ``c.txt``
que tenga la unión de los números de los archivos anteriores,
y que también esté ordenado.

(por subir)

.. include:: disqus.rst

