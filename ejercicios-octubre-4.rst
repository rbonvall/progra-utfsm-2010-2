Ejercicios de la clase del 4 de octubre
=======================================

Control de asistencia
---------------------
La asistencia de los alumnos a clases
puede ser llevada en una tabla como la siguiente:

  ============== = = = = = = =
  **Asistencia** 1 2 3 4 5 6 7
  -------------- - - - - - - -
  Pepito         ✓ ✓ ✓        
  Yayita         ✓ ✓ ✓   ✓   ✓
  Fulanita       ✓ ✓ ✓ ✓ ✓ ✓ ✓
  Panchito       ✓ ✓ ✓   ✓ ✓ ✓
  ============== = = = = = = =

Escriba un programa que permita ingresar los nombres de los alumnos
y sus asistencias a cada una de las clases,
y que indique cuál fue el alumno que asistió a más clases:

.. code-block:: none

     Ingrese los nombres de los alumnos
    Pepito
    Yayita
    Fulanita
    Panchito
     Ingrese asistencia de Pepito
    T T T F F F F
     Ingrese asistencia de Yayita
    T T T F T F T
     Ingrese asistencia de Fulanita
    T T T T T T T
     Ingrese asistencia de Panchito
    T T T F T T T 
     El alumno mas responsable fue Fulanita
     Fulanita asistió a 7 clases

Como siempre,
hay que partir pensando cuáles son los datos
que el programa necesita manejar.
Las variables principales que necesitamos son:

* un arreglo de strings para los nombres,
* un arreglo bidimensional de valores lógicos
  para registrar la asistencia de cada alumno a cada clase, y
* un arreglo de enteros para contener el total de asistencias
  de cada alumno.

Es buena práctica definir dos constantes
``NR_ALUMNOS`` y ``NR_CLASES`` para definir los tamaños de los arreglos
y para usar como límites de los ciclos.
De este modo, el programa es más fácil de adaptar
a otros tamaños de datos.

::

    integer, parameter :: NR_ALUMNOS = 4
    integer, parameter :: NR_CLASES = 7
    logical, dimension(NR_ALUMNOS, NR_CLASES) :: lista
    character(len=10), dimension(NR_ALUMNOS) :: nombres
    integer, dimension(NR_ALUMNOS) :: totales_alumnos

A continuación,
hay que definir los pasos del algoritmo
para obtener el resultado deseado:

1. leer los nombres ingresados por el usuario,
2. leer la asistencia ingresada por el usuario para cada alumno,
3. calcular los totales de cada alumno,
4. encontrar cuál es el alumno con mayor total, y
5. mostrar el mensaje con los datos del alumno.

Tras diseñar los subprogramas apropiados,
la parte principal del programa queda así::

    call leer_nombres(nombres)
    call leer_asistencia(nombres, asistencia)
    totales_alumnos = calcular_totales_alumnos(asistencia)
    i = indice_mayor(totales_alumnos)
    print *, 'El alumno mas responsable fue ', nombres(i)
    print *, trim(nombres(i)), ' asistio a ', &
             totales_alumnos(i), 'clases'

Comentario al margen:
en general se prefiere usar subrutinas
cuando se necesita un subprograma que pida datos al usuario.
Técnicamente es posible hacer que ``leer_nombres`` sea una función
(``nombres = leer_nombres()``),
pero esto resultaría ser diferente a las funciones matemáticas,
que siempre entregan el mismo valor con un parámetro fijo
(por ejemplo, ``cos(0)`` siempre entrega el resultado ``1``).
Como el subprograma siempre entrega un resultado distinto
(el ingresado por el usuario), es preferible usar una subrutina.

Los subprogramas no son complicados.
El programa completo es el siguiente:

.. literalinclude:: programas/asistencia.f95

.. include:: disqus.rst
