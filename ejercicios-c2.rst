Ejercicios para el certamen 2
=============================
Algunos problemas para soltar la mano.
Recuerden probar los programas usando Force 2.

También pueden ejercitar con las guías de ejercicios
de la sección de recursos_ de la página del ramo.
La mayoría de los problemas de Pascal y C
también sirven para Fortran.

.. _recursos: http://programacion.inf.utfsm.cl/wp/recursos/

Inventario
----------
Un supermercado tiene el registro de sus productos en bodega
en una tabla con el siguiente formato:

  ========= ========= ========= ========= 
  Producto  Código    Precio    Cantidad
  ========= ========= ========= ========= 
  Arroz          3142       900      1419
  Pañales        8149      2000       204
  Vuvuzela       2010      5990        15
  Tomate         6844       200      5123
  ...             ...       ...
  ========= ========= ========= ========= 

En un programa,
estos datos pueden estar almacenados
en cuatro arreglos del mismo tamaño.

* Escriba un subprograma que pregunte al usuario
  cuántos productos tiene la bodega,
  y a continuación pregunte los datos de cada uno:

  .. code-block:: none

       ¿Cuántos productos hay?
      4
       Ingrese los datos de cada producto:
      Arroz 3142 900 1419
      Pañales 8149 2000 204
      Vuvuzela 2010 5990 15
      Tomate 6844 200 5123

* Escriba una función
  que calcule el valor total
  de los productos en bodega.

* Escriba una función
  que reciba el código de un producto
  e indique si ese producto está en bodega
  y quedan unidades de él (cantidad `> 0`).

* Escriba un subprograma
  que ordene los datos por código,
  de mayor a menor.

Problema de Josefo
------------------
El `problema de Josefo`_ es el siguiente:
`m` personas están en un círculo,
y son ejecutadas en orden contando cada `n` personas;
el que queda solo al final es el sobreviviente.

Por ejemplo,
con `m = 12` y `n = 3`,
el sobreviviente es la persona 10:

.. image:: http://img.thedailywtf.com/images/200907/Josephus.gif

Escriba un programa que reciba como entrada
los valores de ``m`` y ``n``,
e indique quién es el sobreviviente:

.. code-block:: none

     Ingrese m y n
    12 3
     El sobreviviente es 10

.. _problema de Josefo: http://es.wikipedia.org/wiki/Problema_de_Flavio_Josefo

Distancias
----------
La siguiente tabla
indica las distancias entre algunas ciudades chilenas:

  ============= ========== ========== ========== ============ ==========
  **Distancia** Arica      Santiago   Valparaíso San Fernando Temuco
  Arica                  0       2050       2015         2190       2725
  Santiago            2050          0        119          140        675
  Valparaíso          2015        119          0          255        790
  San Fernando        2190        140        255            0        535
  Temuco              2725        675        790          535          0
  ============= ========== ========== ========== ============ ==========

En un programa,
esta información puede representarse
mediante un arreglo de ciudades
y un arreglo bidimensional de distancias.

* Escriba un subprograma que pregunte al usuario
  la cantidad de ciudades y los nombres de las ciudades:

  .. code-block:: none

       ¿Cuántas ciudades?
      5
       Ingrese los nombres:
      Arica
      Santiago
      Valparaíso
      San Fernando
      Temuco

* Escriba un subprograma que pregunte al usuario
  las distancias entre cada par de ciudades:

  .. code-block:: none

      ¿Distancia Arica-Santiago?
     2050
      ¿Distancia Arica-Valparaíso?
     2015
     ...
      ¿Distancia Temuco-San Fernando?
     535

  Tener la precaución de preguntar sólo una vez cada par de ciudades:
  si se pregunta Arica-Santiago, no debe preguntarse Santiago-Arica.
  Tampoco debe preguntarse la distancia desde una ciudad a sí misma.

* Escriba un programa que pida al usuario
  que ingrese una lista de ciudades,
  que representan un itinerario por realizar:

  .. code-block:: none

      ¿Cuántas ciudades tiene el itinerario?
     4
      Ingrese las ciudades del itinerario:
     Temuco
     Santiago
     San Fernando
     Arica

* Escriba una función ``kms`` que entregue como resultado
  los kilómetros que hay que recorrer para visitar las ciudades en orden.
  Por ejemplo, para el itinerario de arriba,
  debe entregar como resultado `3005`.

.. include:: disqus.rst
