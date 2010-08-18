Diagramas de flujo
==================

.. index:: diagrama de flujo

Un **diagrama de flujo** es una representación gráfica de un algoritmo.
Los pasos son representados por varios tipos de bloques,
y el flujo de ejecución es representado por flechas que conectan los bloques.

Nuestro algoritmo de ejemplo
para resolver una ecuación cuadrática
puede ser representado así:

.. image:: diagramas/cuadratica.png
   :alt: (Diagrama de flujo)

* El inicio y el final del algoritmo son representados con bloques circulares.
  El algoritmo siempre debe ser capaz llegar desde uno hasta el otro,
  sin importar por qué camino lo hace.
  Un algoritmo no puede «quedarse pegado» en la mitad.

* La entrada y la salida de datos son representadas con romboides,
  que en la figura de arriba están pintados de verde.

* Los condicionales son representadas con diamantes.
  Tiene que haber un camino saliente
  etiquetado con *sí* o *no* 
  para cada caso posible,
  La condición se pone dentro del diamante.

* Los ciclos simplemente son flechas que regresan a bloques anteriores.

* Otras sentencias (como las asignaciones)
  van dentro de rectángulos,
  que en la figura están pintados de azul.
  Se puede poner varias instrucciones en un mismo bloque.

.. include:: disqus.rst

