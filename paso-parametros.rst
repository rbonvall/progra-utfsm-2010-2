Paso de parámetros
==================

El paso de parámetros es el mecanismo
mediante el que se pasa información a un subprograma.

Una precaución que hay que tener en cuenta
es que, bajo algunas circunstancias,
un subprograma puede modificar el valor
de las variables pasadas como parámetros.
Algunas veces esto es deseable,
y otras veces no lo es.

Consideremos la siguiente subrutina::

    subroutine f(a)
        integer :: a
        a = 3
    end subroutine f

Lo único que hace la subrutina
es modificar el valor de ``a``.
¿Modifica esta asignación
sólo el valor de la variable local,
o también modifica el valor que fue pasado
al momento de la llamada?
En Fortran, la respuesta es «depende».

Si el argumento es una variable,
entonces su valor es modificado durante la llamada.
El siguiente programa muestra el valor ``3`` como salida::

    n = 2
    call f(n)
    print *, n

Si el argumento es una expresión,
entonces el subprograma recibe una copia del resultado,
por lo que ninguna variable es modificada.
El siguiente programa muestra el valor ``2`` como salida::

    n = 2
    call f(n + 0)
    print *, n

Como podemos notar, el programa funciona diferente
cuando la llamada es ``f(n)`` y ``f(n + 0)``.
Esto hace que sea difícil predecir cuáles son los efectos
de una llamada a un subprograma.

Afortunadamente,
existe un mecanismo para declarar el propósito de cada parámetro,
que permite al compilador verificar que no son usados
de maneras imprevistas.

Parámetros ``in``
-----------------
.. index:: intent in

Cuando un subprograma no debe modificar el valor
de una variable pasada como parámetro,
hay que declarar el parámetro como ``intent(in)``.

Por ejemplo,
la siguiente subrutina sólo puede usar el valor del parámetro ``x``,
pero no modificarlo::

    subroutine f(x)
        integer, intent(in) :: x
        integer :: y

        x = 2        ! error: x no se puede modificar
        y = x + 2    ! correcto: se puede usar el valor de x
        print *, x, y
    end subroutine f

Si un parámetro es ``in``,
uno puede pasarle cualquier expresión
al momento de la llamada::

    call f(2 + 3)
    call f(5 * a + c)
    call f(a)
    call f(g(x))

La expresión será evaluada,
y el resultado es el valor que recibirá el subprograma.

Parámetros ``in out``
---------------------
.. index:: intent out

Cuando un subprograma puede modificar el valor
de una variable pasada como parámetro,
hay que declarar el parámetro como ``intent(in out)``.

Por ejemplo,
la siguiente subrutina recibe las componentes ``x``, ``y`` y ``z``
de un vector, y los normaliza_::

    subroutine normalizar(x, y, z)
        real, intent(in out) :: x, y, z
        real :: norma

        norma = sqrt(x ** 2 + y ** 2 + z ** 2)
        x = x / norma
        y = y / norma
        z = z / norma
    end subroutine

Una vez terminada la llamada,
``x``, ``y`` y ``z`` habrán sido modificadas.

.. _normaliza: http://es.wikipedia.org/wiki/Vector_unitario

Si un parámetro es ``in out``,
uno sólo puede pasarle una variable
al momento de la llamada,
no una expresión::

    call normalizar(x, y, z)
    call normalizar(a, b, c)
    call normalizar(r(1), r(2), r(3))     ! correcto si r es un arreglo
    call normalizar(5, 1, 3)              ! error
    call normalizar(x + 0, y + 0, z + 0)  ! error
    call normalizar(x, y, 0)              ! error

En general,
hay que evitar usar parámetros ``in out``,
ya que hacen los programas más complicados de entender.
La principal motivación para usar parámetros ``in out``
es que permiten que un subprograma entregue más de un resultado.
Por ejemplo, 
la subrutina ``normalizar`` entrega tres resultados,
que son las componentes del vector normalizado.

Si un subprograma debe entregar un único resultado,
es más claro y conveniente usar una función
en vez de una subrutina con un parámetro ``in out``.

De todas maneras,
siempre es buena idea declarar el ``intent`` de todos los parámetros,
ya que permiten al compilador detectar errores
y evitar efectos secundarios imprevistos.

Paso de arreglos y strings como parámetros
------------------------------------------
La principal ventaja de usar subprogramas
es que permiten implementar un algoritmo una única vez
y reutilizarlo en contextos diferentes.
Por lo mismo,
siempre conviene diseñar cada subprograma
para que sea lo más general posible.

Por ejempo,
consideremos la siguiente función
que permite obtener el menor elemento de un arreglo::

    function minimo(a) result(m)
        real, dimension(10), intent(in) :: a
        real :: m
        integer :: i

        m = a(1)
        do i = 2, 10
            if (a(i) < m) then
                m = a(i)
            end if
        end do
    end function minimo

El inconveniente es que esta función sirve
sólo para arreglos de tamaño 10.
El algoritmo para encontrar el mínimo es siempre el mismo,
independientemente del tamaño del arreglo,
por lo que esta función no es lo suficientemente general.

Para que la función pueda recibir arreglos de cualquier tamaño,
hay que declarar el parámetro de la siguiente manera::

    real, dimension(:), intent(in) :: a

Para saber cuál es el tamaño del arreglo recibido
se usa la función ``size``::

    m = a(1)
    do i = 2, size(a)
        if (a(i) < m) then
            m = a(i)
        end if
    end do

Con los strings ocurre lo mismo.
Para declarar un parámetro que puede ser un string de cualquier tamaño,
hay que reemplazar el largo del string con un asterisco::

    character(len=*), intent(in) :: s

.. include:: disqus.rst

