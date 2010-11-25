program ruteo
    implicit none
    
    type :: datos
        real, dimension(3) :: y
    end type datos

    real :: x
    integer :: z
    type(datos) :: r
    integer :: st

    open (unit=10, file='entrada.dat', &
          action='read', form='unformatted')
    open (unit=11, file='salida1.dat', &
          action='write', form='unformatted')
    open (unit=12, file='salida2.dat', &
          action='write', form='unformatted')

    do
        read (10, iostat=st), r
        if (st /= 0) exit

        x = (r % y(1) + r % y(2) + r % y(3)) / 3
        z = x
        if (mod(z, 2) == 0) then
            r % y(1) = r % y(3) + r % y(2)
            r % y(3) = r % y(2)
            write (11), r
        else
            r % y(3) = r % y(2) * 4
            r % y(2) = r % y(1) ** 2
            write (12), r
        end if
    end do

    close (10)
    close (11)
    close (12)
    
end program ruteo

