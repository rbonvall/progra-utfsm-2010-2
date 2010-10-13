Ejercicios de la clase del 6 de octubre
=======================================

Evaluación de polinomios
------------------------
Un `polinomio`_ es una función matemática
de la forma:

.. math::

   p(x) = a_0 + a_1 x + a_2 x^2 + a_3 x^3 +
          \cdots + a_n x^n,

donde `x` es el parámetro
y `a_0, a_1, \dots, a_n`
son números reales dados.

.. _polinomio: http://es.wikipedia.org/wiki/Polinomio

Algunos ejemplos de polinomios son:

* `p(x) = 1 + 2x + x^2`,
* `q(x) = 4 - 17x`,
* `r(x) = -1 - 5x^3 + 3x^5`,
* `s(x) = 5x^{40} + 2x^{80}`.

El grado del polinomio es el mayor de los exponentes
con que aparece el parámetro.
Por ejemplo, `p` tiene grado 2,
mientras que `s` tiene grado 80.

Evaluar un polinomio
significa reemplazar `x` por un valor
y obtener el resultado.
Por ejemplo, si evaluamos el polinomio
`p(x) = -1 + 5x^2 - 2x^3 + 3x^4`
en el valor `x = -2.5`,
obtenemos el resultado `p(-2.5) = 178.6875`.

Desarrolle un programa que pida al usuario
ingresar los coeficientes de un polinomio `p`
y un valor `x`, y entregue como resultado `p(x)`:

.. code-block:: none

     ¿De qué grado es el polinomio p?
    4
     Ingrese los coeficientes de p:
    -1 0 5 -2 3
     ¿En qué punto desea evaluar el polinomio?
    -2.5
     p(x) =   178.68750

Un detalle importante que hay que considerar
es que el número de coeficientes es uno más
que el grado del polinomio,
pues los coeficientes se cuentan desde cero.
Para simplificar el programa,
se puede usar un arreglo cuyos índices vayan
desde cero hasta el grado del arreglo.

Como el grado del polinomio no es conocido
antes de ejecutar el programa,
hay que tener la precaución de crear un arreglo
lo suficientemente grande
para contener los polinomios
que se desee representar.
El grado máximo lo asignaremos
a una constante ``GRADO_MAX``.

El programa es el siguiente:

.. literalinclude:: programas/eval-polinomio.f95

La función ``evaluar`` necesita tres parámetros:
los coeficientes, el grado y el valor de ``x``.
El algoritmo subyacente es el obvio:
se calcula las potencias de ``x``
y se las multiplica por el coeficiente correspondiente
a medida que se hace la suma.

Como curiosidad,
existe un algoritmo más eficiente para evaluar polinomios
llamado `algoritmo de Horner`_,
que evita calcular las potencias de ``x``.

.. _algoritmo de Horner: http://es.wikipedia.org/wiki/Algoritmo_de_Horner

El código de la función ``evaluar``
usando el algoritmo de Horner quedaría así::

    y = p(n)
    do i = n - 1, 0, -1
        y = y * x + p(i)
    end do

¿Por qué funciona este algoritmo?

.. include:: disqus.rst

