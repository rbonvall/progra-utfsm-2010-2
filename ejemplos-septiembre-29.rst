Ejemplos de la clase del 29 de septiembre
=========================================

Ruteo diabólico
---------------
Rutear el siguiente programa:

.. literalinclude:: programas/ruteo-subprogramas.f95
   :linenos:

El ruteo es el siguiente:

.. raw:: html

    <iframe width='500' height='500' frameborder='0'
        src='https://spreadsheets.google.com/pub?key=0Ake0OLr39mnXdFJ5NnBUbUoxT3F6ZXRuTWJFMTY2bHc&hl=es&single=true&gid=0&output=html&widget=true'></iframe>

En la primera columna he puesto la línea del programa
asociada a cada fila del ruteo.
En los instantes en que una función aún no ha sido llamada,
sus variables locales aparecen pintadas de gris.
Las variables ligadas por paso ``in out``
aparecen pintadas de amarillo en la misma fila.

Contar letras
-------------
Escriba un programa
que cuente cuántas veces aparece cada letra
en una oración intresada por el usuario:

.. code-block:: none

    Ingrese una oración:
   Puro Chile es tu cielo azulado
    a           2
    c           2
    d           1
    e           3
    h           1
    i           2
    l           3
    o           3
    p           1
    r           1
    s           1
    t           1
    u           3
    z           1

Primero que todo,
hay que tener un contador para cada letra.
Lo que haremos será crear un arreglo de tamaño 26
(un elemento para cada letra, excluyendo la ``ñ``
para evitar problemas con Fortran)
que llamaremos ``frecuencias``.

El programa lo terminaremos en la próxima clase.

**Actualizado**: el programa terminado es el siguiente:

.. literalinclude:: programas/cuenta-letras.f95

La función ``iachar`` recibe un caracter
y entrega como resultado el `código ASCII`_ asociado a él.
La función ``achar`` es su inversa:
recibe un número y entrega como resultado el caracter asociado.

.. _código ASCII: http://es.wikipedia.org/wiki/ASCII#Caracteres_imprimibles_ASCII

El código ASCII es una asociación entre símbolos y números
usada internamente por el computador para representar caracteres.
Tiene la propiedad de que las letras del alfabeto están ordenadas
y consecutivas, tanto las mayúsculas como las minúsculas,
por lo que se puede saber la posición en el alfabeto de una letra
simplemente restándole el código de la letra «a» más uno.

.. include:: disqus.rst

