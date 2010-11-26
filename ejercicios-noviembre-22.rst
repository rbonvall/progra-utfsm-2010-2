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
El Ministerio de Salud desea conocer la situación
del virus AH1N1 a nivel nacional.
Para ello cuenta con el archivo ``ah1n1.dat``
con registros de tipo ``influenza``::

    type :: influenza
        character(len=20) :: hospital
        integer :: infectados
        integer :: vacunados
        character(len=20) :: ciudad
    end type influenza

**Problema:** escriba un programa que:

* muestre por pantalla el total nacional de infectados
  y vacunados a partir del archivo ``ah1n1.dat``;
* cree el archivo ``vacunar.dat``
  con registros de tipo ``vacuna``::

    type :: vacuna
        character(len=20) :: hospital
        integer :: vacunas_por_recibir
        character(len=20) :: ciudad
    end type vacuna

  que tenga el nombre del hospital,
  el número de vacunas que éste recibirá,
  y la ciudad.

Control 6
---------
Escriba un programa que muestre por pantalla
los cinco mayores números
contenidos en un archivo ``numeros.txt``.

Ejemplo de archivo ``numeros.txt``:

.. code-block:: none

   123
   34
   356
   3
   5346
   45
   994
   35
   56

Ejemplo de la salida correspondiente:

.. code-block:: none

   5346
   994
   356
   123
   56

Suponga que todos los números son distintos
y que el archivo tiene más de cinco números.
No puede usar ni arreglos ni strings.

**Solución**:

.. literalinclude:: programas/pauta-q6.f95

Rutee este programa para entender cómo funciona.

.. include:: disqus.rst

