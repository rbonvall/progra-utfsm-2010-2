program ambitos
    implicit none
    integer :: w, x, y

    w = 0
    x = 1
    y = 2
    call P(3, 4)

    print *, 'Fuera de P'
    print *, '  w =', w
    print *, '  x =', x
    print *, '  y =', y

contains

    subroutine P(y, z)
        integer, intent(in) :: y, z
        integer :: v, w
        v = 5
        w = 6
        x = 7
        !z = 8   ! ilegal (z tiene intent(in))

        print *, 'Dentro de P'
        print *, '  v =', v
        print *, '  w =', w
        print *, '  x =', x
        print *, '  y =', y
        print *, '  z =', z
    end subroutine P

end program ambitos

