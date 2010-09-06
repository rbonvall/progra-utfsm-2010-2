program desviacion_estandar
    implicit none
    integer, parameter :: N = 10
    real, dimension(N) :: datos, cuadrados_diferencias
    real :: suma_datos, suma_cuadrados_diferencias
    real :: promedio, desviacion
    integer :: i

    print *, 'Ingrese', N, 'datos'
    do i = 1, N
        read *, datos(i)
    end do

    suma_datos = 0.0
    do i = 1, N
        suma_datos = suma_datos + datos(i)
    end do
    promedio = suma_datos / N

    do i = 1, N
        cuadrados_diferencias(i) = (datos(i) - promedio) ** 2
    end do

    suma_cuadrados_diferencias = 0.0
    do i = 1, N
        suma_cuadrados_diferencias = suma_cuadrados_diferencias + &
                                     cuadrados_diferencias(i)
    end do
    desviacion = sqrt(suma_cuadrados_diferencias / (N - 1))

    print *, 'Promedio:', promedio
    print *, 'Desviacion:', desviacion

end program desviacion_estandar
