Ejercicios de la clase del 15 de noviembre
==========================================

Suponga que el archivo ``alumnos.dat`` tienen la siguiente estructura::

    type :: alumno
        character(len=30) :: nombre, apellido
        character :: genero    ! 'M' o 'F'
        integer, dimension(3) :: notas
    end type alumno

Para crear el archivo de prueba, puede usar el siguiente programa:

.. literalinclude:: programas/cartas-crear-datos.f95

Para ver los contenidos del archivo, puede usar este otro programa:

.. literalinclude:: programas/cartas-mostrar-datos.f95

Este último programa muestra el patrón típico de los programas
que leen todos los datos de un archivo::

    open (unit=10, ...)
    do
        read (10, iostat=s), variable  ! leer dato
        if (s /= 0) exit               ! ver si terminó el archivo
        hacer_algo_con(variable)       ! hacer algo con el dato leído
    end do
    close (10)

Conviene aprender de memoria esta plantilla.
La única parte que cambia para cada problema
es donde dice ``hacer_algo_con(variable)``.
(Además, si el archivo es de texto, hay que agregar el asterisco al ``read``).

Cartas a alumnos
----------------
Se desea enviar una carta a cada alumno con el mensaje:

.. code-block:: none

    Estimad[o/a] alumn[o/a],
    usted ha [aprobado/reprobado]
    con promedio [p].

Escriba un programa que cree las cartas como archivos de texto
llamados ``carta-nombre-apellido.txt``, donde ``nombre`` y ``apellido``
cambian para cada alumno.

(Explicación por escribir)

El programa completo es el siguiente:

.. literalinclude:: programas/cartas-escribir.f95

Reporte
-------
Escriba un programa que cree un archivo llamado ``notas.txt``
que tenga los apellidos y las notas de los alumnos del archivo ``alumnos.dat``.
Primero deben estar todos los alumnos aprobados,
y a continuación reprobados.

(Explicación por escribir)

El programa completo es el siguiente:

.. literalinclude:: programas/cartas-reporte.f95

Estadísticas
------------
Escriba un programa que cree un archivo llamado ``estadisticas.txt``
que tenga para cada alumno la siguiente información:

.. code-block:: none

    Nombre completo: ...
    Nota más baja: ...
    Aprobado: [sí/no]
    Sobre el promedio del curso: [sí/no]

Este ejercicio queda de tarea.

.. include:: disqus.rst

