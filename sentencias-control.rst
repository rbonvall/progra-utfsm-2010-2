Sentencias de control en Fortran
================================
.. index:: sentencia de control

Además de las sentencias simples,
que son ejecutadas en secuencia,
existen **sentencias de control**
que permiten modificar el flujo del programa
introduciendo ciclos y condicionales.

Una secuencia de control
incluye otra sentencia dentro de sí.
Por ejemplo, una sentencia condicional
incluye la sentencia que puede o no ejecutarse
dependiendo de una condición.

.. index:: indentación

Al escribir las sentencias que van dentro de una sentencia de control,
se acostumbra a comenzar el renglón varias columnas más adelante.
Esto se llama **indentación**,
y es crucial para entender programas complejos.
Para indentar, lo típico es usar cuatro espacios.
Todos los ejemplos en esta sección están debidamente indentados.

Condicional if-then
-------------------
.. index:: if-then

..  .. image:: _static/imagenes/if.png
       :alt: (Diagrama de flujo if-then)
       :align: right

La sentencia **if-then**
(en español: «si-entonces»)
ejecuta instrucciones
sólo si se cumple una condición.
Si la condición es falsa,
no se hace nada.

La sintaxis es la siguiente::

    if (condición) then
        ! qué hacer cuando la condición es verdadera
    end if

Por ejemplo,
el siguente programa felicita a alguien
que aprobó la asignatura:

.. literalinclude:: programas/aprobado.f95

Condicional if-then-else
------------------------
.. index:: if-then-else

.. .. image:: _static/imagenes/if-else.png
      :alt: (Diagrama de flujo if-then-else)
      :align: right

La sentencia **if-then-else**
(«si-entonces-o-si-no»)
decide entre dos secuencias de instrucciones a ejecutar
dependiendo si una condición es verdadera o falsa.
La sintaxis es la siguiente::

    if (condición) then
        ! qué hacer cuando la condición es verdadera
    else
        ! qué hacer cuando la condición es falsa
    end if

Por ejemplo,
el siguiente programa recibe como entrada un año
e indica si es bisiesto_ o no:

.. literalinclude:: programas/bisiesto.f95

.. _bisiesto: http://es.wikipedia.org/wiki/Año_bisiesto

Condicional select-case
-----------------------
.. index:: select-case

La sentencia **select-case**
(«seleccionar-caso»)
decide qué instrucciones ejecutar
dependiendo del valor de una expresión.
Es una manera abreviada
de escribir varios **ifs** uno después del otro.

La sintaxis es la siguiente::

    select case (expresión)
        case (valor1)
            ! qué hacer cuando expresión == valor1
        case (valor2)
            ! qué hacer cuando expresión == valor2
        ...
        case default
            ! qué hacer cuando no se cumplió
            ! ninguno de los caso anteriores
    end select

Por ejemplo,
el siguiente programa
recibe un número entero como entrada
e indica si es par o impar:

.. literalinclude:: programas/par.f95

En un mismo caso es posible poner
varios valores separados por comas.
Por ejemplo,
el siguiente programa recibe como entrada un caracter,
y lo clasifica como vocal, consonante, dígito o símbolo:

.. literalinclude:: programas/clasifica-letras.f95

Ciclo do-while
--------------
.. index:: do while

El ciclo **do-while** («hacer mientras»)
ejecuta una secuencia de instrucciones
mientras una condición sea verdadera.

La sintaxis es::

    do while (condición)
        ! qué hacer mientras la condición se cumple
    end do

Por ejemplo,
el siguiente código toma un número,
y lo eleva al cuadrado hasta pasar de mil::

    do while (n < 1000)
        n = n ** 2
    end do

En general, el ciclo ``do while`` se utiliza
cuando no se puede saber de antemano
cuántas veces se ejecutará un ciclo,
pero sí qué es lo que tiene que ocurrir
para que se termine.

La condición es evaluada al comienzo de cada iteración.
Si la condición deja de ser verdadera en medio de la iteración,
el ciclo no termina, sino que continúa hasta el final.
Por ejemplo,
el siguiente ciclo se ejecuta tres veces,
a pesar de que la condición siempre deja de cumplirse
después de la primera asignación::

    n = 2
    do while (n < 10)
      n = n * 6
      n = n - 9
    end do


Ciclo do
--------
.. index:: do, variable de control

El ciclo **do** («hacer»)
ejecuta una secuencia de instrucciones
un número determinado de veces.
Para llevar la cuenta, utiliza una **variable de control**
que toma distintos valores en cada iteración.

La sintaxis es::

    do variable = inicio, final
        ! qué hacer para cada valor de la variable de control
    end do

En la primera iteración, la variable de control
toma el valor ``inicio``. Al final de cada iteración,
el valor de la variable de control aumenta automáticamente.
Cuando se pasa de largo del valor ``final``,
el ciclo termina.

Por ejemplo,
el siguiente programa muestra los cubos
de los números del 1 al 20::

    do i = 1, 20
        print *, i, i ** 3
    end do

Si el valor final es menor al inicial,
el ciclo nunca es ejecutado.

Además, el ciclo ``do`` puede recibir un tercer valor
que representa el incremento de la variable de control,
es decir, en cuánto cambiará su valor después de cada iteración.

Por ejemplo,
el siguiente programa muestra los cuadrados
de los números *impares* menores que 100::

    do i = 1, 100, 2
        print *, i, sqrt(real(i))
    end do

También es posible hacer ciclos que van hacia atrás::

    do i = 10, 1, -1
        print *, i
    end do
    print *, 'Feliz an~o nuevo!'

Tanto la variable de control
como los valores inicial, final y de incremento
deben ser de tipo entero.
La variable de control es una variable como cualquier otra,
y debe ser declarada apropiadamente al comienzo del programa.

Un ciclo ``do`` es una manera abreviada de escribir
un tipo especial de ciclo ``do while``.
Los siguientes dos ciclos son equivalentes
(cuando ``inc`` es positivo)::

    do i = inicio, fin, inc
        print *, i
    end do

    i = inicio
    do while (i <= fin)
        print *, i
        i = i + inc
    end do

Salir de un ciclo
-----------------
.. index:: exit

Además de las condiciones de término propias
de los ciclos ``do`` y ``do while``,
siempre es posible salir de un ciclo en cualquier momento
usando la sentencia ``exit``.
Lo lógico es que sea usada dentro de un condicional,
para evitar que todos los ciclos se terminen a la primera.

Por ejemplo,
en el programa para determinar si un número es primo o no,
la búsqueda de divisores puede ser terminada prematuramente
apenas se encuentra el primero de ellos::

    es_primo = .true.
    do d = 2, n - 1
        if (mod(n, d) == 0) then
            es_primo = .false.
            exit
        end if
    end do

Saltar a la siguiente iteración
-------------------------------
.. index:: cycle

La sentencia ``cycle`` se usa
para saltar a la iteración siguiente
sin llegar al final de la que está en curso.

Por ejemplo,
el siguiente programa muestra el seno, el coseno y la tangente
de los números del 1 al 30, pero omitiendo los que terminan en 7::

    do i = 1, 30
        if (mod(i, 10) == 7) then
            cycle
        end if

        print *, i
        print *, 'Seno:    ', sin(real(i))
        print *, 'Coseno:  ', cos(real(i))
        print *, 'Tangente:', tan(real(i))
    end do

Ciclo infinito
--------------
.. index:: ciclo infinito

Existe un tercer tipo de ciclo
que no tiene ninguna condición de termino.
Se llama **ciclo infinito**
y la sintaxis es::

    do
        ! hacer algo
    end do

La única manera de salir de un ciclo infinito
es usando la sentencia ``exit``.

Por ejemplo,
el siguiente código pregunta números al usuario,
e indica si el número es par o impar,
y termina cuando el usuario ingresa un cero::

    do
        read *, n

        if (n == 0) then
            exit
        end if

        select case (mod(n, 2))
            case (0)
                print *, 'Par'
            case (1)
                print *, 'Impar'
        end select
    end do

.. include:: disqus.rst

