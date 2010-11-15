program crear_archivo_alumnos
    implicit none

    type :: alumno
        character(len=30) :: nombre, apellido
        character :: genero       ! 'M' o 'F'
        integer, dimension(3) :: notas
    end type alumno

    open (unit=10, file='alumnos.dat', form='unformatted', action='write')

    write (10), alumno('Antonia', 'Toledo',     'F', (/33, 49, 36/))
    write (10), alumno('Juan',    'Bravo',      'M', (/76, 28, 30/))
    write (10), alumno('Claudio', 'Cabezas',    'M', (/93, 89, 77/))
    write (10), alumno('Luisa',   'Canepa',     'F', (/21, 27, 39/))
    write (10), alumno('Eugenio', 'Soto',       'M', (/77, 43, 60/))
    write (10), alumno('Esteban', 'Castillo',   'M', (/73, 56, 68/))
    write (10), alumno('Lorena',  'Fajardo',    'F', (/88, 49, 49/))
    write (10), alumno('Daniel',  'Fuentealba', 'M', (/34, 52, 36/))
    write (10), alumno('Pamela',  'Fuentes',    'F', (/83, 46, 75/))

    close (10)

end program crear_archivo_alumnos
