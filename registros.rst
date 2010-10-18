Registros
=========
.. index:: registro, campo

Un **registro** (*record* en inglés) es un tipo de datos
compuesto de varias variables.
Los registros son utilizados para agrupar valores
que por su naturaleza deben manejarse juntos.
Las variables que forman parte de un registro
se llaman **campos**.

Por ejemplo,
una fecha está compuesta de un día, un mes y un año.
Por lo tanto,
puede ser representada usando un registro
con tres campos enteros.
De este modo,
es posible crear variables de tipo ``fecha``.

.. index:: type

Los tipos de registros son creados
en la sección de declaraciones del programa
de la siguiente manera::

    type :: fecha
        integer :: dia
        integer :: mes
        integer :: anno
    end type fecha

Una vez creado el tipo,
es posible crear variables de tipo ``fecha``
usando la sintaxis ``type(registro)``::

    type(fecha) :: nacimiento

.. index:: %

Cada uno de los campos de un registro
puede ser usado usando la sintaxis ``registro % campo``::

    nacimiento % dia = 24
    nacimiento % mes = 11
    nacimiento % anno = 1986

Al asignar un registro entero a otro del mismo tipo,
todos los valores son copiados automáticamente, uno por uno::

    hoy = nacimiento   ! dia, mes y anno son copiados

Un registro puede estar compuesto de tipos más complicados,
como arreglos u otros registros::

    type :: alumno
        character(len=20)     :: nombre
        character(len=20)     :: apellido
        type(fecha)           :: nacimiento
        integer, dimension(3) :: notas
    end type alumno


Si ``a`` es una variable de tipo ``type(alumno)``,
uno podría llenar todos sus campos de la siguiente manera::

    a % nombre = 'Perico'
    a % apellido = 'Los Palotes'
    a % nacimiento % dia = 4
    a % nacimiento % mes = 12
    a % nacimiento % anno = 1990
    a % notas(1) = 97
    a % notas(2) = 20
    a % notas(3) = 55

Constructores
-------------
.. index:: constructor de registro

Al declarar un nuevo tipo de registro,
automáticamente es creado un **constructor**.
El constructor es una función
que permite asignar de una vez
los campos de un registro.

Por ejemplo,
una fecha puede ser inicializada
de la siguiente forma::

    hoy = fecha(18, 10, 2010)

Un alumno podría ser inicializado así::

    a = alumno('Perico', 'Los Palotes', &
               fecha(4, 12, 1990),      &
               (/97, 20, 55/))

(En este ejemplo usamos también la sintaxis
para `inicializar arreglos`_).

.. _inicializar arreglos: http://csrg.inf.utfsm.cl/~rbonvall/progra-utfsm-2010-2/arreglos.html#inicializacion-de-arreglos

Arreglos de registros
---------------------
Los arreglos de registros son útiles
para representar tablas de datos.
Los campos representan las columnas de la tabla
y cada entrada del arreglo representa una fila.

Declaremos un arreglo de alumnos
usando el registro definido más arriba::

    integer, parameter :: N = 45
    type(alumno), dimension(N) :: alumnos

Si el arreglo ha sido llenado,
podemos obtener todos los datos sobre alumnos específicos:

* la nota del segundo certamen del decimoséptimo alumno::

      alumnos(17) % notas(2)

* el día de nacimiento del octavo alumno::

      alumnos(8) % nacimiento % dia

* el nombre completo del vigésimo cuarto alumno::

      trim(alumnos(24) % nombre) // trim(alumnos(24) % apellido)

.. include:: disqus.rst

