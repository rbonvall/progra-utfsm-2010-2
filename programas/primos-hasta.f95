program primos_hasta
    implicit none
    integer :: n, d, maximo
    logical :: es_primo

    print *, 'Ver los numeros primos menores que:'
    read *, maximo

    do n = 2, maximo
        es_primo = .true.
        do d = 2, n - 1
            if (mod(n, d) == 0) then
                es_primo = .false.
                exit
            end if
        end do

        if (es_primo) then
            print *, n
        end if
    end do

end program primos_hasta
