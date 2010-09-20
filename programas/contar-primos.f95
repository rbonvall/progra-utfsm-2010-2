program contar_primos
    implicit none
    integer, parameter :: N = 10
    integer, dimension(N) :: datos
    logical, dimension(N) :: primos

    call leer_datos()
    call verificar_primalidad()
    print *, count(primos), ' son primos'

contains

    subroutine leer_datos()
        integer :: i
        print *, 'Ingrese ', N, ' enteros:'
        do i = 1, N
            read *, datos(i)
        end do
    end subroutine leer_datos

    subroutine verificar_primalidad()
        integer :: i
        do i = 1, N
            primos(i) = es_primo(datos(i))
        end do
    end subroutine verificar_primalidad

    function es_primo(n) result(p)
        integer :: n, d
        logical :: p
        p = n /= 1
        do d = 2, n - 1
            if (mod(n, d) == 0) then
                p = .FALSE.
                exit
            end if
        end do
    end function es_primo

end program contar_primos
