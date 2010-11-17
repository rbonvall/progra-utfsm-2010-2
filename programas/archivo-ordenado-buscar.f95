program buscar_archivo_ordenado
    implicit none

    type :: donante
        integer :: rut
        character(len=20) :: nombre
        integer :: monto
    end type donante

    type(donante) :: d
    integer :: st
    integer :: rut

    print *, 'Ingrese rut:'
    read *, rut

    open (unit=10, file='donantes.dat', form='unformatted', action='read')
    do
        read (10, iostat=st), d
        if (st /= 0) exit

        if (d % rut == rut) then
            print *, trim(d % nombre), ' ha donado ', d % monto
        end if
    end do
    close (10)

end program buscar_archivo_ordenado
