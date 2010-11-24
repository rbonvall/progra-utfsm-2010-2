program ruta_avion
    implicit none
    
    type :: aeropuerto
        real :: x, y
        character(len=3) :: codigo
    end type aeropuerto

    type(aeropuerto) :: anterior, actual
    real :: dist
    integer :: st

    dist = 0.0

    open (unit=10, file='ruta.dat', &
          form='unformatted', action='read')

    read (10), anterior
    do
        read (10, iostat=st), actual
        if (st /= 0) exit

        dist = dist + distancia(actual, anterior)
        anterior = actual
    end do

    close (10)

    print *, 'La distancia recorrida por el avion es', dist

contains

    function distancia(a1, a2) result(d)
        type(aeropuerto), intent(in) :: a1, a2
        real :: dx, dy, d

        dx = a1 % x - a2 % x
        dy = a1 % y - a2 % y
        d = sqrt(dx ** 2 + dy ** 2)
    end function distancia

end program ruta_avion
