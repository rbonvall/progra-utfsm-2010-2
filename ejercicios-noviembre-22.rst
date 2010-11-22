Ejercicios de la clase del 22 de noviembre
==========================================

Ruteo con archivos
------------------
Éste es el ejercicio de ruteo
del certamen 3 del semestre pasado.

Rutee el siguiente programa:

.. literalinclude:: programas/ruteo-2010-1-c3.f95

Los contenidos de los archivos ``alumnos.dat`` y ``rangos.txt``
son, respectivamente, los siguientes:

.. code-block:: none

    Carola Oyanedel   25  F
    Pedro Osorio      21  M
    Alfonso Lira      19  M
    Gabriela Veliz    18  F
    Andres Fuentes    17  M
    Paula Salazar     23  F

.. code-block:: none

    25  34 
    56  103 
    91  124 

Además,
escriba cómo quedará el archivo ``rangos.txt``
después de la ejecución del programa.

El ruteo es el siguiente:

.. code-block:: none

                      ┌────┬───┐
                      │ a %│a %│
    ┌─────────────────┤ ed │se ├─────┬─────┬─────┬─────┬─────┬─────┬─────┐
    │ a % nombre      │ ad │xo │ t1  │ t2  │ t3  │ t4  │ t5  │ t6  │ st  │
    ├─────────────────┼────┼───┼─────┼─────┼─────┼─────┼─────┼─────┼─────┤
    │                 │    │   │  25 │  34 │     │     │     │     │     │
    │                 │    │   │     │     │  56 │ 103 │     │     │     │
    │                 │    │   │     │     │     │     │  91 │ 124 │     │
    │ Carola Oyanedel │ 25 │ F │     │     │     │     │     │     │   0 │
    │                 │    │   │     │     │     │     │  92 │     │     │
    │ Pedro Osorio    │ 21 │ M │     │     │     │     │     │     │   0 │
    │                 │    │   │     │     │     │ 104 │     │     │     │
    │ Alfonso Lira    │ 19 │ M │     │     │     │     │     │     │   0 │
    │                 │    │   │     │     │     │ 105 │     │     │     │
    │ Gabriela Veliz  │ 18 │ F │     │     │     │     │     │     │   0 │
    │                 │    │   │     │     │  57 │     │     │     │     │
    │ Andres Fuentes  │ 17 │ M │     │     │     │     │     │     │   0 │
    │                 │    │   │     │  35 │     │     │     │     │     │
    │ Paula Salazar   │ 23 │ F │     │     │     │     │     │     │   0 │
    │                 │    │   │     │     │  58 │     │     │     │     │
    │                 │    │   │     │     │     │     │     │     │  -1 │
    └─────────────────┴────┴───┴─────┴─────┴─────┴─────┴─────┴─────┴─────┘

El archivo ``rangos.txt`` queda con el siguiente contenido al final:

.. code-block:: none

    25 35
    58 105
    92 124

Vacunas AH1N1
-------------
(Por subir)

Control 6
---------
(Por subir)

.. include:: disqus.rst

