program crear_reporte
    implicit none

    type :: alumno
        character(len=30) :: nombre, apellido
        character :: genero
        integer, dimension(3) :: notas
    end type alumno
    type(alumno) :: a
    integer :: st, promedio

    open (unit=11, file='notas.txt', action='write')

    open (unit=10, file='alumnos.dat', form='unformatted', action='read')
    do
        read (10, iostat=st), a
        if (st /= 0) exit

        promedio = nint(sum(a % notas) / 3.0)
        if (promedio >= 55) then
            write (11, *), trim(a % apellido), ' ', promedio
        end if
    end do
    close (10)

    open (unit=10, file='alumnos.dat', form='unformatted', action='read')
    do
        read (10, iostat=st), a
        if (st /= 0) exit

        promedio = nint(sum(a % notas) / 3.0)
        if (promedio < 55) then
            write (11, *), trim(a % apellido), ' ', promedio
        end if
    end do
    close (10)
    
    close (11)
    
end program crear_reporte
