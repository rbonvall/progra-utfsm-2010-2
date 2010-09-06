program promedio_notas
    implicit none
    integer :: a, b, c, d, e, f
    integer :: promedio

    print *, 'Ingrese sus notas'
    read *, a
    read *, b
    read *, c
    read *, d
    read *, e
    read *, f

    promedio = nint((a + b + c + d + e + f) / 6.0)

    print *, 'Su promedio es', promedio

end program promedio_notas
