program mostrar_archivo_alumnos
    implicit none

    type :: alumno
        character(len=30) :: nombre, apellido
        character :: genero       ! 'M' o 'F'
        integer, dimension(3) :: notas
    end type alumno
    type(alumno) :: a
    integer :: st

    open (unit=10, file='alumnos.dat', form='unformatted', action='read')
    do
        read (10, iostat=st), a
        if (st /= 0) exit
        print *, a
    end do
    close (10)

end program mostrar_archivo_alumnos

