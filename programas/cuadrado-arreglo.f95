program cuadrado_arreglo
    implicit none
    integer, parameter :: N = 10
    real, dimension(N) :: datos

    call leer_datos(N)
    datos = datos ** 2
    call mostrar_datos(N)

contains

    subroutine leer_datos(nr_datos)
        integer :: nr_datos
        integer :: i

        print *, 'Ingrese', nr_datos, 'datos:'
        do i = 1, nr_datos
            read *, datos(i)
        end do
    end subroutine leer_datos

    subroutine mostrar_datos(nr_datos)
        integer :: nr_datos
        integer :: i

        print *, 'Los resultados son:'
        do i = 1, nr_datos
            print *, datos(i)
        end do
    end subroutine mostrar_datos

end program cuadrado_arreglo
