program mediana
    implicit none
    integer, parameter :: N = 5
    integer, dimension(N) :: a

    call llenar_arreglo(a)
    call ordenar_arreglo(a)
    print *, 'La mediana es ', a((N + 1) / 2)

contains

    subroutine llenar_arreglo(a)
        integer, dimension(:), intent(in out) :: a
        integer :: i

        print *, 'Ingrese los datos:'
        do i = 1, size(a)
            read *, a(i)
        end do
    end subroutine llenar_arreglo

    subroutine ordenar_arreglo(a)
        integer, dimension(:), intent(in out) :: a
        integer :: i, i_min

        do i = 1, size(a) - 1
            i_min = posicion_menor_desde(a, i)
            call intercambiar(a(i), a(i_min))
        end do
    end subroutine ordenar_arreglo

    function posicion_menor_desde(a, inicio) result(i_min)
        integer, dimension(:), intent(in) :: a
        integer, intent(in) :: inicio
        integer :: minimo, i, i_min

        minimo = a(inicio)
        i_min = inicio
        do i = inicio + 1, size(a)
            if (a(i) < minimo) then
                minimo = a(i)
                i_min = i
            end if
        end do
    end function posicion_menor_desde

    subroutine intercambiar(x, y)
        integer, intent(in out) :: x, y
        integer :: t

        t = x
        x = y
        y = t
    end subroutine intercambiar
end program mediana
