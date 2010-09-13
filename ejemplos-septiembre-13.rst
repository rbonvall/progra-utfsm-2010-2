Ejemplos de la clase del 13 de septiembre
=========================================

Búsqueda lineal
---------------
.. index:: búsqueda lineal

El problema es: determinar en qué posición de un arreglo
está el valor ingresado por el usuario.

El algoritmo para resolver este problema es muy simple,
y se llama **búsqueda lineal**.
Consiste en ir comparando el valor ingresado
con cada uno de los elementos del arreglo en orden.

Cuando se encuentra el valor buscado,
se indica que ha sido encontrado y se termina el ciclo.
El valor que tenía el contador del ciclo
es la posición del arreglo en que se encuentra el valor.

.. literalinclude:: programas/busqueda-lineal.f95


Búsqueda binaria
----------------
.. index:: búsqueda binaria

El problema es: determinar en qué posición de un arreglo **ordenado**
está el valor ingresado por el usuario.

Cuando el arreglo está ordenado,
se puede usar un algoritmo más inteligente,
llamado `búsqueda binaria`_.
Es el algoritmo que usamos inconscientemente
cuando buscamos una palabra en el diccionario
o un teléfono en la guía telefónica.

.. _búsqueda binaria: http://en.wikipedia.org/wiki/Binary_search_algorithm

La búsqueda binaria parte comparando desde el primer elemento,
sino desde el que está en el medio.
Si el valor buscado es menor al del medio 
significa que está en la primera mitad del arreglo (si es que está),
y si es mayor, en la segunda.
Una vez descartada una mitad,
se repite el proceso en la otra mitad.

Para delimitar la sección del arreglo en la que se tiene certeza
que se debe encontrar el valor,
se usa dos índices ``i_inicial`` e ``i_final``,
inicializados respectivamente en ``1`` y ``N``,
que van siendo actualizados después de cada iteración.

El algoritmo termina cuando el valor es encontrado,
o cuando ``i_inicial`` e ``i_final`` se cruzan.
Si se cumple lo último,
es porque el valor buscado no está en arreglo.

El código es el siguiente:

.. literalinclude:: programas/busqueda-binaria.f95

.. include:: disqus.rst

