Ejemplos de la clase del 20 de octubre
======================================

Los ejemplos con fechas usan registros de la siguiente forma::

    type :: fecha
        integer :: dia
        integer :: mes
        integer :: anno
    end type fecha

Recordar que la mayoría de las operaciones sobre los registros
deben hacerse usando los valores de los campos por separado.

Fecha siguiente
---------------
**Problema**: escriba una función que reciba como parámetro una fecha,
y entregue como resultado la fecha siguiente::

    fecha_siguiente(fecha(5, 11, 2010))   ! → fecha(6, 11, 2010)
    fecha_siguiente(fecha(30, 4, 1995))   ! → fecha(1,  5, 1995)
    fecha_siguiente(fecha(31, 12, 2005))  ! → fecha(1,  1, 2006)

En casi todos los casos,
para obtener la fecha siguiente basta con sumar uno al día.

Los casos especiales ocurren a fin de mes y a fin de año.
Para detectarlos, basta con revisar qué pasó después de sumar uno al día:

* si el campo ``dia`` queda con un valor mayor al número de días del mes,
  hay que pasar al primer día del mes siguiente;
* si el campo ``mes`` queda con un valor mayor a 12,
  hay que pasar al primero de enero del año siguiente.

Para hacer la función más simple,
se puede usar un arreglo global constante
que contenga cuántos días tiene cada mes::

    integer, dimension(12), parameter :: dias_mes = (/31, 28, 31, 30, &
                                                      31, 30, 31, 31, &
                                                      30, 31, 30, 31/)

La función completa queda así::

    function dia_siguiente(f) result (fs)
        type(fecha), intent(in) :: f
        type(fecha) :: fs

        fs = f
        fs % dia = fs % dia + 1
        if (fs % dia > dias_mes(fs % mes)) then
            fs % mes = fs % mes + 1
            fs % dia = 1
        end if
        if (fs % mes > 12) then
            fs % anno = fs % anno + 1
            fs % mes = 1
        end if
    end function dia_siguiente

Esta función no toma en cuenta los años bisiestos.
**Tarea**: modificar la función para que tome en cuenta los años bisiestos.

Días entre fechas
-----------------
**Problema**: escriba una función que reciba como parámetros dos fechas,
y entregue como resultado la cantidad de días que hay entre ambas fechas.

(por redactar)

Orden entre fechas
------------------
**Problema**: escriba una función que reciba como parámetros dos fechas,
e indique si la primera fecha ocurre antes que la segunda.

(por redactar)

Días de edad
------------
**Problema**: escribir un programa que pregunte al usuario
su fecha de nacimiento y la fecha de hoy,
y entregue como resultado cuántos días de edad tiene el usuario.

Este programa es simplemente una aplicación de las funciones
desarrolladas más arriba.
El programa completo es el siguiente:

.. literalinclude:: programas/edad-dias.f95

Intersección de círculos
------------------------
**Problema**: escribir una función que reciba como parámetros dos círculos
y que indique como resultado si los círculos se intersectan o no.

.. image:: http://csrg.inf.utfsm.cl/~rbonvall/progra-ust-2010-1/_images/circulos.png
   :alt: (Ejemplo gráfico: círculos A, B y C. A y B están intersectados).

En la figura, A y B se intersectan, y C no se intersecta con ninguno de los otros.

Lo primero que hay que pensar es: ¿cómo representar un círculo en un programa?
Para identificar un círculo en el plano,
nos basta con conocer tres datos:
las coordenadas `x` e `y` de su centro, y su radio `r`.
Entonces, podemos representar los círculos usando el siguiente registro::

    type :: circulo
        real :: x, y, r
    end type circulo

El siguiente paso es determinar cuándo dos circulos están intersectados.
Para eso, basta con comparar la distancia entre los centros
con la suma de sus radios:

.. image:: http://csrg.inf.utfsm.cl/~rbonvall/progra-ust-2010-1/_images/traslape.png
   :alt: cuando los círculos están intersectados,
         la suma de los radios es menor que
         la distancia entre los centros.

El programa completo es el siguiente:

.. literalinclude:: programas/interseccion-circulos.f95

.. include:: disqus.rst

