program conversiones
    implicit none
    integer :: n
    real :: x

    ! Si hay al menos un operando real,
    ! todos los operandos son convertidos a reales
    ! y el resultado es real:
    print *, 17 / 3     ! imprime: 5
    print *, 17.0 / 3   ! imprime: 5.666
    print *, 17 / 3.0   ! imprime: 5.666
    print *, 17.0 / 3.0 ! imprime: 5.666

    ! Si se asigna un real a una variable entera,
    ! el valor es truncado (se eliminan los decimales):
    n = 34.71
    x = 34.71
    print *, n ! imprime: 34
    print *, x ! imprime: 34.71

    ! Los numeros negativos son truncados hacia arriba:
    n = -18.39
    print *, n ! imprime: -18

    read *, x

end program conversiones
