program promedio_notas
    implicit none
    integer, parameter :: N = 6
    integer, dimension(N) :: notas
    integer :: promedio, suma
    integer :: i

    print *, 'Ingrese sus notas'
    do i = 1, N
        read *, notas(i)
    end do

    suma = 0
    do i = 1, N
        suma = suma + notas(i)
    end do
    promedio = nint(suma / real(N))

    print *, 'Su promedio es', promedio

end program promedio_notas
