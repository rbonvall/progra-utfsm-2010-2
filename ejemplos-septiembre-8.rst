Ejemplos de la clase del 8 de septiembre
========================================

Nombre y apellido
-----------------
Como ejemplo de uso de strings,
desarrollamos un programa que pregunta el nombre y el apellido
del usuario, y hace algunas operaciones con esos datos.

.. literalinclude:: programas/hola-nombre.f95

Las cosas importantes que hay que notar son:

* cada vez que se muestra un string,
  se usa la función ``trim`` para omitir los espacios de relleno;
* al leer un string con ``read``,
  se usa la definición de formato ``'(A)'`` en vez de asterisco
  para indicar que el texto a leer es toda la línea
  y no sólo hasta el primer espacio en blanco;
* como la variable ``nombre_completo`` tendrá como valor
  la concatenación (``//``) de ``nombre``, un espacio y ``apellido``,
  su tamaño debe ser la suma de los tamaños de ``nombre`` y ``apellido``
  más uno (por el espacio).

Palabras palíndromas
--------------------
Un palíndromo_ es una palabra que se lee igual
de izquierda a derecha y de derecha a izquierda.
Escriba un programa que indique
si una palabra ingresada por el usuario
es o no un palíndromo:

.. code-block:: none

     Ingrese una palabra:
    reconocer
     Es palindromo

.. code-block:: none

     Ingrese una palabra:
    sopesamos
     No es palindromo

.. _palíndromo: http://es.wikipedia.org/wiki/Pal%C3%ADndromo

El algoritmo para determinar si una palabra es un palíndromo
puede ser descrito informalmente así:

* hay que comparar todos los pares de letras
  comenzando desde los extremos hacia el centro;
* si todos los pares son iguales,
  entonces la palabra sí es un palíndromo;
* basta que se encuentre un par de letras correspondientes
  distintas para que la palabra no sea un palíndromo.

El siguiente diagrama ilustra el proceso:

.. code-block:: none

    r e c o n o c e r               s o p e s a m o s
    ↑       =       ↑  ✓            ↑       =       ↑  ✓
      ↑     =     ↑    ✓              ↑     =     ↑    ✓
        ↑   =   ↑      ✓                ↑   ≠   ↑      ✗
          ↑ = ↑        ✓

Una manera de escribir el programa es
usar dos variables enteras ``i`` y ``j``
que tienen la posición dentro de la palabra
de las letras que están siendo comparadas.

Partiendo desde los extremos,
hay que incrementar ``i``
y decrementar ``j``,
hasta que se cumpla una de dos condiciones:

* las letras ``i``-ésima y ``j``-ésima
  son diferentes, en cuyo caso
  la palabra no es un palíndromo; o
* ``i`` y ``j`` se cruzan,
  es decir, ``i`` deja de ser menor que ``j``,
  en cuyo caso ya se compararon todos los pares correspondientes
  sin encontrar un par diferente,
  por lo que la palabra sí es un palíndromo.

A continuación se muestra una manera
de escribir el código para esta estrategia.
La actualización de los valores de ``i`` y ``j``
se hace dentro de un ciclo ``do while``,
cuya condición es que no haya ocurrido
alguno de los dos casos señalados.
Al final, se revisa cuál de los dos casos ocurrió
para determinar la salida:

.. literalinclude:: programas/palindromo.f95

Otra manera de escribir el programa es la siguiente:
partir suponiendo que la palabra es palíndromo,
luego probar todos los pares correspondientes
y cambiar el supuesto cuando se encuentre un par diferente.
El supuesto puede ser representado por una variable
de tipo ``logical``.

En vez de usar un par de variables ``i`` y ``j``,
se puede usar sólo ``i``
e ir comparando la letra ``i``-ésima
con la ``(largo + 1 - i)``-ésima,
para todo ``i`` desde ``1`` hasta ``largo / 2``.

El código es el siguiente:

.. literalinclude:: programas/palindromo-2.f95

**Tarea**: escribir un programa que indica si una oración
es palíndroma o no; es decir, que ignore los espacios
para decidir si lo es o no:

.. code-block:: none

     Ingrese una oracion
    anita lava la tina
     La oracion es palíndroma

Los programas de arriba no funcionan para oraciones,
ya que los espacios son considerados como una letra más:

.. code-block:: none

    a n i t a   l a v a   l a   t i n a
    ↑                =                ↑  ✓
      ↑              =              ↑    ✓
        ↑            =            ↑      ✓
          ↑          =          ↑        ✓
            ↑        ≠        ↑          ✗

Cuadrado mágico
---------------
Un cuadrado mágico es un arreglo cuadrado de números enteros
en que las sumas de cada fila, de cada columna y de cada diagonal
son iguales.
El problema es: desarrollar un programa que indique
si un cuadrado de números es mágico o no.

.. code-block:: none

     Ingrese el cuadrado:
     1 15 14  4
    12  6  7  9
     8 10 11  5
    13  3  2 16
     El cuadrado es magico.

Para resolver este problema,
hay que hacerlo en dos pasos:

1. calcular las sumas de las filas, columnas y diagonales;
2. verificar que todas las sumas son iguales.

(Por escribir)

.. literalinclude:: programas/cuadrado-magico.f95

.. literalinclude:: programas/cuadrado-magico-2.f95

.. include:: disqus.rst

