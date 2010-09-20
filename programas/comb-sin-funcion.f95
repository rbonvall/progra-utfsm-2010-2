program numero_combinatorio
    implicit none
    integer :: m, n, comb, i, f

    print *, 'Ingrese m y n'
    read *, m, n

    comb = 1

    ! multiplicar por m!
    f = 1
    do i = 1, m
        f = f * i
    end do
    comb = comb * f

    ! dividir por (m - n)!
    f = 1
    do i = 1, m - n
        f = f * i
    end do
    comb = comb / f

    ! dividir por n!
    f = 1
    do i = 1, n
        f = f * i
    end do
    comb = comb / f

    print *, '(m n) =', comb

end program numero_combinatorio
