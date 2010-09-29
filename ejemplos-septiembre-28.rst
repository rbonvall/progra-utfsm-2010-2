Ejemplos de la clase del 28 de septiembre
=========================================

En los ruteos de programas con subprogramas,
hay que tener en cuenta lo siguiente:

* hay que asignar una columna a cada variable global,
  y a todas las variables locales
  de cada una de las funciones y subrutinas;
* al pasar los valores de los parámetros del subprograma,
  se ponen todos en la misma línea;
* cuando los valores de parámetros con ``intent(in out)``
  son modificados, también se modifica la variable
  pasada como argumento al subprograma.

Ruteo de subprogramas con parámetros ``intent(in out)``
-------------------------------------------------------
Rutear el siguiente programa, con la entrada ``x = 2``, ``y = 5``::

    program intercambio
        implicit none
        integer :: x, y

        read *, x
        read *, y
        call intercambiar(x, y)

        print *, x, y

    contains
        subroutine intercambiar(a, b)
            integer, intent(in out) :: a, b
            integer :: t
            t = a
            a = b
            b = t
        end subroutine intercambiar
    end program intercambio

El ruteo es el siguiente:

.. code-block:: none

    | Globales  | Locales         |
    |           | intercambio     |

    |  x  |  y  |  a  |  b  |  t  | Salida

    |  2  |     |xxxxx|xxxxx|xxxxx|
    |     |  5  |xxxxx|xxxxx|xxxxx|
    |     |     |  2  |  5  |     |
    |     |     |     |     |  2  |
    |  5  |     |  5  |     |     |
    |     |  2  |     |  2  |     |
    |     |     |xxxxx|xxxxx|xxxxx| 5 2

Como los parámetros ``a`` y ``b`` están declarados con ``intent(in out)``,
quedan ligados respectivamente a las variables ``x`` e ``y``,
por lo que todas las modificaciones de ``a`` y ``b``
se ven reflejadas simultáneamente en los valores de ``x`` e ``y``.

Las variables locales sólo existen durante la llamada del subprograma.
Para indicar los instantes en que las variables no existen,
he rellenado las casillas correspondientes con ``xxxxxx``.
No es necesario hacer esto en certámenes y controles.


Ruteo de subprogramas con parámetros ``intent(in)``
---------------------------------------------------
Rutear el siguiente programa, con la entrada ``m = 5`` y ``n = 2``:

.. literalinclude:: programas/comb-con-intent.f95

El ruteo es el siguiente:

.. code-block:: none

    | Globales  | Locales comb    | Locales         |
    |           |                 | factorial       |

    |  m  |  n  |  m  |  n  |  c  |  p  |  f  |  i  | Salida

    |   5 |   2 |xxxxx|xxxxx|xxxxx|xxxxx|xxxxx|xxxxx|
    |     |     |   5 |   2 |     |xxxxx|xxxxx|xxxxx|
    |     |     |     |     |     |   5 |     |     |
    |     |     |     |     |     |     |   1 |     |
    |     |     |     |     |     |     |     |   1 |
    |     |     |     |     |     |     |   1 |     |
    |     |     |     |     |     |     |     |   2 |
    |     |     |     |     |     |     |   2 |     |
    |     |     |     |     |     |     |     |   3 |
    |     |     |     |     |     |     |   6 |     |
    |     |     |     |     |     |     |     |   4 |
    |     |     |     |     |     |     |  24 |     |
    |     |     |     |     |     |     |     |   5 |
    |     |     |     |     |     |     | 120 |     |
    |     |     |     |     |     |xxxxx|xxxxx|xxxxx|
    |     |     |     |     |     |   3 |     |     |
    |     |     |     |     |     |     |   1 |     |
    |     |     |     |     |     |     |     |   1 |
    |     |     |     |     |     |     |   1 |     |
    |     |     |     |     |     |     |     |   2 |
    |     |     |     |     |     |     |   2 |     |
    |     |     |     |     |     |     |     |   3 |
    |     |     |     |     |     |     |   6 |     |
    |     |     |     |     |     |xxxxx|xxxxx|xxxxx|
    |     |     |     |     |     |   2 |     |     |
    |     |     |     |     |     |     |   1 |     |
    |     |     |     |     |     |     |     |   1 |
    |     |     |     |     |     |     |   1 |     |
    |     |     |     |     |     |     |     |   2 |
    |     |     |     |     |     |     |   2 |     |
    |     |     |     |     |  10 |xxxxx|xxxxx|xxxxx|
    |     |     |xxxxx|xxxxx|xxxxx|xxxxx|xxxxx|xxxxx| C(m, n) = 10

Mediana
-------
Escriba un programa que pida al usuario que ingrese cinco números
e indique cuál es la mediana_::

     Ingrese 5 números:
    3.1
    2.0
    5.4
    1.7
    4.3
     La mediana es 3.100000

.. _mediana: http://es.wikipedia.org/wiki/Mediana_(estadística)

Para desarrollar este programa,
primero pensamos el algoritmo.
En este caso, el procedimiento más sencillo es el siguiente:

1. ingresar los datos,
2. ordenar el arreglo,
3. imprimir el elemento que queda en la mitad.

Si suponemos que ya existen subprogramas
que hacen cada uno de los pasos,
el programa principal queda simplemente así::

    program mediana
        implicit none
        integer, parameter :: N = 5
        real, dimension(N) :: datos

        call llenar_arreglo(datos)
        call ordenar_arreglo(datos)
        print *, 'La mediana es', a((N + 1) / 2)

    contains

        ! ...

    end program mediana

Al escribir la subrutina para llenar los datos del arreglo
debe tener las siguientes precauciones:

* el arreglo debe ser recibido con ``intent(in out)``,
  para que los cambios se vean reflejados en el arreglo original, y
* el parámetro debe ser declarado como arreglo con tamaño arbitrario,
  para que la misma subrutina sirva independientemente
  del tamaño del arreglo. ::

    subroutine llenar_arreglo(a)
        integer, dimension(:), intent(in out) :: a
        integer :: i

        print *, 'Ingrese los datos:'
        do i = 1, size(a)
            read *, a(i)
        end do
    end subroutine llenar_arreglo

La subrutina para ordenar el arreglo
puede usar el algoritmo de `ordenamiento por selección`_
que vimos hace un par de clases.

.. _ordenamiento por selección: ejemplos-septiembre-15.html#ordenamiento

El algoritmo se simplifica si suponemos que ya existe una función
``posicion_menor_desde(a, i)`` que entregue la posición del menor elemento
del arreglo ``a`` desde el elemento ``i``-ésimo hacia adelante::

    subroutine ordenar_arreglo(a)
        integer, dimension(:), intent(in out) :: a
        integer :: i, i_min

        do i = 1, size(a) - 1
            i_min = posicion_menor_desde(a, i)
            call intercambiar(a(i), a(i_min))
        end do
    end subroutine ordenar_arreglo

Escribir la función ``posicion_menor_desde`` y la subrutina ``intercambiar``
queda de tarea.

.. include:: disqus.rst

