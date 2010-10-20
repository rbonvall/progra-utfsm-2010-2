program interseccion_circulos
    implicit none

    type :: circulo
        real :: x, y, r
    end type circulo

    type(circulo) :: c1, c2

    print *, 'Ingrese datos x, y, r del primer circulo:'
    read *, c1
    print *, 'Ingrese datos x, y, r del segundo circulo:'
    read *, c2

    if (se_intersectan(c1, c2)) then
        print *, 'Los circulos se intersectan'
    else
        print *, 'Los circulos no se intersectan'
    end if

contains
    
    function se_intersectan(c1, c2) result(i)
        type(circulo), intent(in) :: c1, c2
        logical :: i

        i = (c1 % r + c2 % r > distancia_centros(c1, c2))
    end function se_intersectan

    function distancia_centros(c1, c2) result(d)
        type(circulo), intent(in) :: c1, c2
        real :: d

        d = sqrt((c1 % x - c2 % x) ** 2 +  &
                 (c1 % y - c2 % y) ** 2)
    end function distancia_centros

end program interseccion_circulos
