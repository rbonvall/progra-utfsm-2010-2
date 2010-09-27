program intercambio
    implicit none
    integer :: x, y

    x = 2
    y = 5
    call intercambiar(x, y)
   !call intercambiar(x, 5)          ! error
   !call intercambiar(x + y, y * x)  ! error
 
   print *, x, y

contains

    subroutine intercambiar(a, b)
        integer, intent(in out) :: a, b
        integer :: t
        t = a
        a = b
        b = t
    end subroutine intercambiar

end program intercambio
