program promedio_notas
    implicit none
    integer, dimension(6) :: notas
    integer :: promedio

    print *, 'Ingrese sus notas'
    read *, notas(1)
    read *, notas(2)
    read *, notas(3)
    read *, notas(4)
    read *, notas(5)
    read *, notas(6)

    promedio = nint((notas(1) + notas(2) + notas(3) + &
                     notas(4) + notas(5) + notas(6)) / 6.0)
    print *, 'Su promedio es', promedio

end program promedio_notas
