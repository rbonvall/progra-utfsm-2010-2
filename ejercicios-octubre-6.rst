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

(por escribir)

.. include:: disqus.rst
