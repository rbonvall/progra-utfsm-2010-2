Ejercicios para el certamen 3
=============================
Voy a ir subiendo ejercicios para practicar para el certamen.

También pueden ejercitar con las guías de ejercicios
de la sección de recursos_ de la página del ramo.
La mayoría de los problemas de Pascal y C
también sirven para Fortran.

.. _recursos: http://programacion.inf.utfsm.cl/wp/recursos/

Supermercado
------------
Para ejercitar arreglos de registros,
les recomiendo que resuelvan los problemas
de `la clase del 27 de octubre <ejemplos-octubre-27.html>`_.

Ruteo de archivos
-----------------
Rutee el siguiente programa:

.. literalinclude:: programas/ruteo-archivos-1.f95

El archivo ``entrada.dat`` tiene los siguientes datos::

    1.0   2.0   3.0
    5.0   8.0   2.0
    3.5   1.5   4.0
    7.0   4.0   1.0
    
Indique cómo quedarán los archivos
``salida1.dat`` y ``salida2.dat``.



Archivo de enteros
------------------
El archivo ``a.txt`` tiene una lista de números enteros.

Escriba un programa que cree dos archivos
``pares.txt`` e ``impares.txt``
que tengan, respectivamente,
los números pares e impares del archivo ``a.txt``.

Escriba un programa que cree un archivo ``ordenados.txt``
que tenga los números del archivo ``a.txt``
ordenados de menor a mayor.

Escriba un programa que cree un archivo ``severla.txt``
que tenga los números de ``a.txt`` en orden inverso.

Escriba un programa ``cuentas.txt``
que indique cuántas veces aparece cada número
del archivo ``a.txt``:

.. code-block:: none

    7: 5 veces
    189: 12 veces
    3: 1 vez
    ...

Para probar,
puede descargar el archivo `a.txt <_static/a.txt>`_.

.. include:: disqus.rst
