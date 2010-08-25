program promedio_hasta_negativo
    implicit none
    integer :: cuenta
    real :: x, suma, promedio

    print *, 'Ingrese los numeros'

    suma = 0.0
    cuenta = 0
    do
        read *, x
        if (x < 0) then
            exit
        end if

        cuenta = cuenta + 1
        suma = suma + x
    end do

    promedio = suma / cuenta

    print *, 'El promedio es', promedio
end program promedio_hasta_negativo
