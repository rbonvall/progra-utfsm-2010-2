program primo
    implicit none
    integer :: n, d
    logical :: es_primo

    print *, 'Ingrese un numero entero:'
    read *, n

    es_primo = .true.
    do d = 2, n - 1
        if (mod(n, d) == 0) then
            es_primo = .false.
            exit
        end if
    end do

    if (es_primo) then
        print *, n, 'es primo'
    else
        print *, n, 'es compuesto'
    end if
end program primo
