Ejemplos de la clase del 6 de septiembre
========================================

Cálculo de la desviación estándar
---------------------------------
La `desviación estándar`_ se calcula usando la siguiente fórmula:

.. math::

      \sigma_x = \sqrt{\frac{1}{N-1} \sum_{i=1}^{N} (x_i - \bar x)^2},

donde :math:`\bar x` es el promedio y :math:`x_i` es el :math:`i`-ésimo dato.

La manera ordenada de diseñar el algoritmo
es separar el proceso en varias etapas:

* leer los datos y guardarlos en un arreglo ``datos``;
* sumar los datos para calcular el promedio;
* calcular los cuadrados de las diferencias de los datos con el promedio,
  e irlos guardando en un arreglo ``cuadrados_diferencias``;
* sumar los cuadrados de las diferencias, dividir por ``N - 1``
  y sacar la raíz cuadrada del resultado.

Escribir el código es mucho más simple
si estas etapas están claras de antemano.
El programa terminado es el siguiente:

.. literalinclude:: programas/desviacion-estandar.f95

Usando operaciones que operan sobre los arreglos completos,
el código queda mucho más sencillo:

.. literalinclude:: programas/desviacion-estandar-2.f95

Tarea: cálculo de la moda
-------------------------
Escribir un programa que reciba como entrada veinte números enteros,
y que entregue como salida cuál es `el número que aparece más veces`_.

.. _el número que aparece más veces: http://es.wikipedia.org/wiki/Moda_%28estad%C3%ADstica%29
.. _desviación estándar: http://es.wikipedia.org/wiki/Desviaci%C3%B3n_est%C3%A1ndar

.. include:: disqus.rst

