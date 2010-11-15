program escribir_cartas
    implicit none

    type :: alumno
        character(len=30) :: nombre, apellido
        character :: genero       ! 'M' o 'F'
        integer, dimension(3) :: notas
    end type alumno
    type(alumno) :: a
    integer :: st
    character(len=70) :: nombre_archivo
    integer :: promedio
    
    open (unit=10, file='alumnos.dat', &
          form='unformatted', action='read')

    do
        read (10, iostat=st), a
        if (st /= 0) exit

        promedio = nint(sum(a % notas) / 3.0)
        nombre_archivo = 'carta-'          //        &
                          trim(a%nombre)   // '-' // &
                          trim(a%apellido) // '.txt'

        open (unit=11, file=nombre_archivo, action='write')
        if (a % genero == 'F') then
            write (11, *), 'Estimada alumna,'
        else
            write (11, *), 'Estimado alumno,'
        end if
        
        if (promedio >= 55) then
            write (11, *), 'usted ha aprobado :)'
        else
            write (11, *), 'usted ha reprobado :('
        end if
        
        write (11, *), 'con promedio', promedio
        close (11)
    end do

    close (10)
    
end program escribir_cartas
