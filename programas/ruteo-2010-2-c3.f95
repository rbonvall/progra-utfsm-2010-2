program ruteo
    implicit none
    
    type :: experimento
        character(len=10) :: nombre
        integer :: cantidad_datos
    end type experimento

    type(experimento) :: ex
    integer :: x, i
    integer :: st

    open (unit=11, file='experimentos.dat', &
          action='read', form='unformatted')
    open (unit=12, file='muestras.txt', action='read')
    open (unit=13, file='resultado.txt', action='write')

    do
        read (11, iostat=st), ex
        if (st /= 0) exit

        print *, ex % nombre
        print *, ex % cantidad_datos

        do i = 1, ex % cantidad_datos
            read (12, *), x
            if (x >= 4) then
                write (13, *), x
            end if
        end do

    end do

    close (11)
    close (12)
    close (13)
end program ruteo
