program primeros_primos
    implicit none
    integer, parameter :: NP = 100
    integer :: i, cuenta

    i = 2
    cuenta = 0
    do while (cuenta < NP)
        if (es_primo(i)) then
            cuenta = cuenta + 1
            print *, i
        end if
        i = i + 1
    end do

contains
    function es_primo(n) result(p)
        integer :: n, d
        logical :: p

        p = (n > 1)
        do d = 2, n - 1
            if (mod(n, d) == 0) then
                p = .FALSE.
                exit
            end if
        end do
    end function es_primo

end program primeros_primos
