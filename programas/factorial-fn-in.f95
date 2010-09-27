program funcion_factorial
    implicit none
    integer :: m = 5

    print *, factorial(m)
    print *, factorial(m - 1)
    print *, factorial(3)

    ! aqui podemos estar seguros de que
    ! el valor de m no ha cambiado

contains
    function factorial(n) result(f)
        integer, intent(in) :: n
        integer :: i, f
        f = 1
        do i = 1, n
            f = f * i
        end do
    end function factorial
end program funcion_factorial
