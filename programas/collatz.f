program collatz
    integer :: n

    read *, n

    do while (n > 1)
        print *, n
        if (mod(n, 2) == 0) then
            n = n / 2
        else
            n = 3 * n + 1
        end if
    end do
end program collatz
