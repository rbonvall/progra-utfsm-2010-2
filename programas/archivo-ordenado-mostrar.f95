program mostrar_archivo_ordenado
    implicit none

    type :: donante
        integer :: rut
        character(len=20) :: nombre
        integer :: monto
    end type donante

    type(donante) :: d
    integer :: st

    open (unit=10, file='donantes.dat', form='unformatted', action='read')
    do
        read (10, iostat=st), d
        if (st /= 0) exit
        print *, d
    end do
    close (10)

end program mostrar_archivo_ordenado
