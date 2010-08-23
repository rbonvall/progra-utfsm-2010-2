Tipos de datos
==============
.. index:: tipo de datos

Un **tipo de datos** es una propiedad de un conjunto de valores
que indica cuáles son los valores válidos,
qué operaciones se pueden efectuar sobre ellos
y cómo son representados internamente por el computador.

En un programa,
cada variable tiene asociado un tipo.
Sólo se puede asignar valores de ese tipo a la variable.

En el lenguaje Fortran, los siguientes son los tipos de datos básicos.

Tipo entero
-----------
.. index:: entero (tipo), integer

El tipo **integer** permite representar números enteros.

No todos los enteros son representables como un valor ``integer``.
El rango de valores permitidos depende del computador, del compilador
y del sistema operativo, pero generalmente los valores permitidos
están entre ``-2147483648`` y ``2147483647``.

En el código,
los enteros literales se representan como una secuencia de dígitos,
precedidos por un signo opcional::

    142857
    -123
    +1935

Sobre valores de tipo ``integer`` pueden ser aplicadas
las operaciones artiméticas y relacionales.

Tipo real
---------
.. index:: real (tipo), real

El tipo **real** permite representar números reales.

En el código,
los reales literales se representan escribiendo las partes entera y fraccional
separadas por un punto, y precedidos por un signo opcional::

   3.141592654
   -0.345

Además, se puede utilizar `notación científica`_,
indicando con una letra ``e`` la potencia de 10 usada::

    6.02e23
    9.1094e-31

Estos valores son respectivamente iguales a
:math:`6,02\cdot 10^{23}` (el `número de Avogadro`_) y
:math:`9,1094\cdot 10^{-31}` (la `masa del electrón`_ en kilógramos).

No todos los números reales son representables por el tipo ``real``.
Internamente, el computador representa los números reales
usando la representación de `coma flotante`_,
que permite expresar números de distintos niveles de precisión.
Esta representación no es exacta; todos los números reales
y las operaciones que aparecen en un programa son aproximaciones.
Por ejemplo, en muchos computadores el siguiente código
entrega como resultado ``0.99999994``::

    print *, 41.0 * (1 / 41.0)

Sobre valores de tipo ``real`` pueden ser aplicadas
las operaciones artiméticas y relacionales.

.. _notación científica: http://es.wikipedia.org/wiki/Notaci%C3%B3n_cient%C3%ADfica
.. _número de Avogadro: http://es.wikipedia.org/wiki/N%C3%BAmero_de_Avogadro
.. _masa del electrón: http://es.wikipedia.org/wiki/Electr%C3%B3n#Propiedades
.. _coma flotante: http://es.wikipedia.org/wiki/Coma_flotante

Tipo lógico
-----------
.. index:: lógico (tipo), logical

El tipo **logical** permite representar los valores verdadero y falso.

En el código,
los valores verdadero y falso se representan respectivamente como::

    .true.
    .false.

al imprimirlos usando ``print``,
estos valores aparecen por pantalla respectivamente como ``T`` y ``F``.

Sobre valores de tipo ``logical`` pueden ser aplicadas
sólo operaciones lógicas.

Tipo caracter
-------------
.. index:: caracter (tipo), integer

El tipo **character** permite representar símbolos
como letras, dígitos, puntuación, etc.

Los caracteres literales se representan entre comillas simples::

    'a'
    '!'
    '7'

Si se pone más de un caracter entre las comillas,
se obtiene una **cadena de caracteres**,
que permite representar texto::

    'En un lugar de La Mancha'

Ejemplo
-------
El siguiente programa ilustra la declaración de variables
de cada uno de los tipos básicos
y sus asignaciones usando valores literales:

.. literalinclude:: programas/literales.f

.. include:: disqus.rst

