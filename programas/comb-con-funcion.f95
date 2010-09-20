program numero_combinatorio
    implicit none
    integer :: m, n

    print *, 'Ingrese m y n'
    read *, m, n
    print *, 'C(m, n) =', comb(m, n)

contains

    function factorial(p) result(f)
        integer :: p, f, i
        f = 1
        do i = 1, p
            f = f * i
        end do
    end function factorial

    function comb(m, n) result(c)
        integer :: m, n, c
        c = factorial(m) / (factorial(m - n) * factorial(n)) 
    end function comb

end program numero_combinatorio
