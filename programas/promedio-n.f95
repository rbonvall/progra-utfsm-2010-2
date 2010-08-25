program promedio_n
    implicit none
    integer :: i, n
    real :: x, suma, promedio

    print *, 'Cuantos numeros ingresara?'
    read *, n

    print *, 'Ingrese los numeros'
    suma = 0.0
    do i = 1, n
        read *, x
        suma = suma + x
    end do

    promedio = suma / real(n)

    print *, 'El promedio es', promedio
end program promedio_n
