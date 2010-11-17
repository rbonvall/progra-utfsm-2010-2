program agregar_en_archivo_ordenado
    implicit none

    type :: donante
        integer :: rut
        character(len=20) :: nombre
        integer :: monto
    end type donante

    type(donante) :: d, nuevo
    integer :: st

    print *, 'Ingrese datos para agregar'
    print *, 'Rut:'
    read *, nuevo % rut
    print *, 'Nombre:'
    read '(A)', nuevo % nombre
    print *, 'Rut:'
    read *, nuevo % monto

    open (unit=10, file='donantes.dat', form='unformatted', action='read')
    open (unit=11, file='temp.dat', form='unformatted', action='write')

    do
        read (10, iostat=st), d
        if (st /= 0) exit
        if (nuevo % rut < d % rut) exit
        write (11), d
    end do

    write (11), nuevo

    if (st == 0) then
        write (11), d
    end if

    do
        read (10, iostat=st), d
        if (st /= 0) exit
        write (11), d
    end do

    close (10)
    close (11)

    call unlink('donantes.dat')
    call rename('temp.dat', 'donantes.dat')

end program agregar_en_archivo_ordenado
