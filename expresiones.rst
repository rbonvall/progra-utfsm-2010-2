Expresiones
===========
.. index:: literal, variable, operador, llamada a función, expresión

Una **expresión** es una combinación de valores y operaciones
que, al ser evaluados, entregan un valor.

Algunos elementos que pueden formar parte de una expresión son:
valores **literales** (como ``2``, ``'hola'``, ``.TRUE.`` o ``5.7``),
**variables**, **operadores** y **llamadas a funciones**.

Por ejemplo,
la expresión ``4 * 3 - 2`` entrega el valor 10 al ser evaluada.

El valor de la expresión ``n / 7 + 5``
depende del valor que tiene la variable ``n``
en el momento de la evaluación.

Una expresión está compuesta de otras expresiones,
que son evaluadas recursivamente
hasta llegar a sus componentes más simples,
que son los literales y las variables.

Por ejemplo, en la expresión::

    b * b - 4 * a * c

las subexpresiones que son evaluadas son las siguientes::

    b * b
    b
    4 * a * c
    4 * a
    4
    a
    c

**Ejercicio:** ¿por qué no ``a * c``?

Operadores
----------
.. index:: operador, operador unario, operador binario, operando

Un **operador** es un símbolo en una expresión
que representa una operación aplicada a los valores sobre los que actúa.

Los valores sobre los que actúa un operador se llaman **operandos**.
Un **operador binario** es el que tiene dos operandos, mientras que
un **operador unario** es el que tiene sólo uno.

Por ejemplo,
en la expresión ``2.0 + x``
el operador ``+`` es un operador binario que representa la suma,
y sus operandos son ``2.0`` y ``x``.

Los operadores en Fortran se pueden clasificar en:
aritméticos, relacionales y lógicos.

Operadores lógicos
~~~~~~~~~~~~~~~~~~
.. index:: operador lógico, operador booleano

Los **operadores lógicos** tienen operandos lógicos
y resultado lógico.

Los operadores lógicos son:

.. index:: .AND., .OR., .NOT.

* **.AND.** (en español: «y») representa la conjunción lógica;
* **.OR.** (en español: «o») representa la disyunción lógica.
* **.NOT.** (en español: «negación») representa la negación lógica.

Los operadores ``and`` y ``or`` son binarios,
mientras que ``not`` es unario.

La siguiente tabla muestra todos los resultados posibles
de las operaciones lógicas.
Las primeras dos columnas representan los valores de los operandos,
y las siguientes tres, los resultados de las operaciones.

=========== =========== ============= ============ ===========
``p``       ``q``       ``p .AND. q`` ``p .OR. q`` ``.NOT. p``
----------- ----------- ------------- ------------ -----------
``.TRUE.``  ``.TRUE.``  ``.TRUE.``    ``.TRUE.``   ``.FALSE.``
``.TRUE.``  ``.FALSE.`` ``.FALSE.``   ``.TRUE.``
``.FALSE.`` ``.TRUE.``  ``.FALSE.``   ``.TRUE.``   ``.TRUE.``
``.FALSE.`` ``.FALSE.`` ``.FALSE.``   ``.FALSE.``
=========== =========== ============= ============ ===========

Operadores aritméticos
~~~~~~~~~~~~~~~~~~~~~~
.. index:: operador aritmético

Los **operadores aritméticos** son los que representan operaciones numéricas.
Sus operandos pueden ser enteros o reales.

.. index:: + (binario), - (binario), * , / , **

Los operadores aritméticos binarios son:

* la **suma** ``+``;
* la **resta** ``-``;
* la **multiplicación** ``*``;
* la **división** ``/``;
* la **exponenciación** ``**``;

.. index:: - (unario)

El operador ``-`` también funciona como operador unario,
cambiando el signo de su operando.

Operadores relacionales
~~~~~~~~~~~~~~~~~~~~~~~
.. index:: operador relacional, comparación

Los **operadores relacionales** son los que permiten comparar valores.
Sus operandos son cualquier cosa que pueda ser comparada,
y sus resultados siempre son valores lógicos.

Los operadores relacionales son:

* el **igual a** ``==``;
* el **distinto a** ``/=``;
* el **mayor que** ``>``;
* el **mayor o igual que** ``>=``;
* el **menor que** ``<``;
* el **menor o igual que** ``<=``.


Precedencia de operadores
-------------------------
.. index:: precedencia de operadores, paréntesis

La **precedencia de operadores**
es una regla que especifica
en qué orden deben ser evaluadas
las operaciones de una expresión.

(Por escribir)

Llamadas a funciones
--------------------
.. index:: función, parámetro, argumento

Una **función** es un tipo de operación
que, en vez de estar representada por un símbolo,
tiene un nombre.
Los operandos de una función se llaman **parámetros** o **argumentos**.

Por ejemplo, la función ``exp`` tiene un parámetro real ``x``,
y entrega como resultado :math:`e^x`.

.. index:: llamada a función

Para usar la función,
hay que poner el nombre de la función,
y a continuación los argumentos entre paréntesis.
Esta operación se denomina **llamar a la función**.

Funciones intrínsecas
~~~~~~~~~~~~~~~~~~~~~
Fortran provee varias funciones que son propias del lenguaje.
Se les denomina **funciones intrínsecas**.

Las siguientes funciones
reciben un argumento real
y entregan un resultado real:

* ``sqrt(x)``: la raíz cuadrada de ``x``.
* ``exp(x)``: la exponencial de ``x``.
* ``log(x)``: el logaritmo natural de ``x``.
* ``sin(x)``: el seno de ``x``.
* ``cos(x)``: el coseno de ``x``.

La función ``abs`` puede recibir
un argumento real o entero,
y entrega un resultado del mismo tipo:

* ``abs(x)``: el valor absoluto de ``x``.

Las siguientes funciones sirven para convertir
números reales a enteros. Se diferencian en
el criterio que usan para redondear:

* ``int(x)``: trunca el número real ``x``.
* ``nint(x)``: aproxima el número real ``x`` al entero más cercano.
* ``ceiling(x)``: aproxima el número real ``x`` hacia arriba.
* ``floor(x)``: aproxima el número real ``x`` hacia abajo.

En matemáticas y ciencias de la computación,
las últimas dos funciones se llaman respectivamente `techo y piso`_,
y se representan como :math:`⌈x⌉` y :math:`⌊x⌋`.

.. _techo y piso: http://es.wikipedia.org/wiki/Funciones_de_parte_entera

La función ``mod`` (módulo) recibe dos argumentos del mismo tipo,
pero generalmente la usaremos con argumentos enteros positivos:

* ``mod(a, b)``: entrega el resto de la división entre ``a`` y ``b``.

Dos usos importantes de la función ``mod`` son:

1. verificar si un número ``n`` es divisible por ``d``
   usando la condición ``mod(n, d) == 0``, y
2. obtener el último dígito de un número entero ``n``
   usando la expresión ``mod(n, 10)``.

.. include:: disqus.rst

