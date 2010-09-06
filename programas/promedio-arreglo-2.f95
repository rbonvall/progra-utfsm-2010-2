program promedio_notas
    implicit none
    integer, dimension(6) :: notas
    integer :: promedio, suma
    integer :: i


    print *, 'Ingrese sus notas'
    do i = 1, 6
        read *, notas(i)
    end do

    suma = 0
    do i = 1, 6
        suma = suma + notas(i)
    end do
    promedio = nint(suma / 6.0)

    print *, 'Su promedio es', promedio

end program promedio_notas
