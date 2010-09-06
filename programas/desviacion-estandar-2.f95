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

    promedio = sum(datos) / N
    desviacion = sum((datos - promedio) ** 2) / (N - 1)

    print *, 'Promedio:', promedio
    print *, 'Desviacion:', desviacion

end program desviacion_estandar
