Ámbitos
=======
.. index:: ámbito

El **ámbito** de una variable
(en inglés: *scope*)
es el contexto de un programa
en que ella puede ser utilizada.

Ámbitos global y local
----------------------
.. index:: ámbito local, ámbito global, variable local, variable global

En Fortran, existen dos ámbitos:
el **global** y el **local**.

(Técnicamente, existen más ámbitos,
pero en los programas que desarrollaremos para la asignatura
éstos son los únicos que tendremos que considerar).

Tienen ámbito local
las variables locales de los subprogramas
(funciones y subrutinas).
Éstas variables pueden ser utilizadas
sólo dentro del subprograma
en que fueron declaradas.

Por ejemplo,
consideremos las dos siguientes declaraciones de subprogramas::

    function F(a, b) result(r)
        integer, intent(in) :: a
        integer, intent(in out) :: b
        integer :: c, r
        ! ...
    end function F

    subroutine S(x, y)
        integer, intent(in) :: x
        integer, intent(in out) :: y
        integer :: z
        ! ...
    end subroutine

Las variables locales de la función ``F`` son:
``a``, ``b``, ``c`` y ``r``.

Las variables globales son las declaradas
en la sección principal del programa
(antes del ``contains``).

Las variables globales
pueden ser usadas desde cualquier parte del programa,
tanto en la sección principal
como dentro de funciones y subrutinas.

Reglas de ámbito
----------------
.. index:: reglas de ámbito

Todos los lenguajes de programación
tienen sus propias **reglas de ámbito**
que indican qué variables tienen preferencia
en caso que haya variables con el mismo nombre
en distintos ámbitos.

En Fortran,
cuando hay una variable global y una local
que tienen el mismo nombre,
entonces la variable global no es visible
desde dentro de ese subprograma.
Esto no significa que la variable global no exista;
simplemente está oculta, pero su valor permanece.
Todas las ocurrencias del nombre
dentro del subprograma
se refieren a la variable local.

Como ejemplo,
consideremos el siguiente programa:

.. literalinclude:: programas/ambito.f95
   :linenos:

Este programa tiene tres variables globales:
``w``, ``x`` e ``y``.
La subrutina ``P`` tiene cuatro variables locales:
``v``, ``w``, ``y`` y ``z``.

Las asignaciones funcionan así:

* En las líneas 5 a 7,
  sólo las variables globales son modificadas.
  Las variables locales de ``P`` aún no existen.
* En la línea 20,
  se modifica la variable local ``v``.
* En la línea 21,
  se modifica la variable local ``w``,
  ya que la variable global ``w``
  queda oculta.
* En la línea 22,
  se modifica la variable global ``x``,
  ya que no hay ninguna variable local con el mismo nombre.

Al terminar la llamada a la subrutina,
las variables locales dejan de existir.

La salida del programa es::

    Dentro de P
      v =           5
      w =           6
      x =           7
      y =           3
      z =           4
    Fuera de P
      w =           0
      x =           7
      y =           2

Como puede verse,
el valor de ``x`` cambió después de la llamada a la subrutina,
a pesar de que no fue pasada como parámetro.

En general,
es una mala práctica que un subprograma modifique variables globales.
Un subprograma sólo debería entregar datos
ya sea a través de parámetros ``in out``
o como el resultado de una función.
Aun así,
hay que tener claras las reglas de ámbito
ya que pueden ser la causa de errores al programar.

.. include:: disqus.rst
