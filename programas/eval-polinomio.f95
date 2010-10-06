program evaluar_polinomio
    implicit none
    integer, parameter :: GRADO_MAX = 10
    real, dimension(0:GRADO_MAX) :: p
    integer :: grado
    real :: x
    integer :: i

    print *, 'De que grado es el polinomio p?'
    read *, grado
    print *, 'Ingrese los coeficientes de p'
    read *, (p(i), i = 0, grado)
    print *, 'En que punto desea evaluar el polinomio?'
    read *, x
    print *, 'p(x) =', evaluar(grado, p, x)

contains

    function evaluar(n, p, x) result(y)
        integer, intent(in) :: n
        real, dimension(0:GRADO_MAX), intent(in) :: p
        real, intent(in) :: x
        real :: y
        integer :: i

        y = 0.0
        do i = 0, n
            y = y + p(i) * x ** i
        end do
    end function evaluar

end program evaluar_polinomio
