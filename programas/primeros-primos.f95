program primeros_primos
    implicit none
    integer :: n, d
    logical :: es_primo
    integer :: nr_primos, cuenta

    print *, 'Cuantos numeros primos quiere:'
    read *, nr_primos

    cuenta = 0
    n = 2
    do while (cuenta < nr_primos)
        ! ver si n es primo
        es_primo = .true.
        do d = 2, n - 1
            if (mod(n, d) == 0) then
                es_primo = .false.
                exit
            end if
        end do

        ! mostrar salida y actualizar variables
        if (es_primo) then
            print *, n
            cuenta = cuenta + 1
        end if
        n = n + 1
    end do

end program primeros_primos
