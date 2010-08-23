program collatz
    implicit none
    integer :: n

    print *, 'Ingrese n'
    read *, n
    do while (n > 1)
        if (mod(n, 2) == 0) then
            n = n / 2
        else
            n = 3 * n + 1
        end if
        print *, n
    end do
end program collatz
