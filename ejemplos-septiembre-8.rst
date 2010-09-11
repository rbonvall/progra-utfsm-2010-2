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
(Por escribir)

**Tarea**: escribir un programa que indica si una oración
es palíndroma o no; es decir, que ignore los espacios
para decidir si lo es o no:

.. code-block:: none
   
     Ingrese una oracion
    anita lava la tina
     La oracion es palíndroma

(Por escribir)

.. literalinclude:: programas/palindromo.f95

.. literalinclude:: programas/palindromo-2.f95

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

