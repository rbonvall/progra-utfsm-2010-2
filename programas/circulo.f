program circulo
    implicit none
    real :: radio
    real, parameter :: pi = 3.14159

    print *, 'Ingrese el radio del circulo'
    read *, radio
    print *, 'El perimetro es ', 2 * pi * radio
    print *, 'El area es ', pi * radio * radio
end program circulo
