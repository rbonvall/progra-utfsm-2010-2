program promedio_3
    implicit none
    real :: x, y, z
    real :: promedio

    print *, 'Ingrese tres numeros:'
    read *, x
    read *, y
    read *, z

    promedio = (x + y + z) / 3

    print *, promedio

end program promedio_3
