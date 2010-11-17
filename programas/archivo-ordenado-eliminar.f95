program eliminar_en_archivo_ordenado
    implicit none

    type :: donante
        integer :: rut
        character(len=20) :: nombre
        integer :: monto
    end type donante

    type(donante) :: d
    integer :: st
    integer :: rut

    print *, 'Ingrese rut para eliminar:'
    read *, rut

    open (unit=10, file='donantes.dat', form='unformatted', action='read')
    open (unit=11, file='temp.dat', form='unformatted', action='write')
    do
        read (10, iostat=st), d
        if (st /= 0) exit

        if (d % rut /= rut) then
            write (11), d
        end if
    end do
    close (10)
    close (11)

    call unlink('donantes.dat')
    call rename('temp.dat', 'donantes.dat')

end program eliminar_en_archivo_ordenado
