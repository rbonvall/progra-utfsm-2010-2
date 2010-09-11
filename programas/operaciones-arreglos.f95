program operaciones_arreglos
    implicit none
    real, dimension(5) :: a = (/ 6,  1, -4,  3,  0/)
    real, dimension(5) :: b = (/-1,  1,  0,  4, -2/)
    real, dimension(5) :: c
    real :: x = 0.5

    print *, 'a:', a
    print *, 'b:', b

    ! sumar los elementos del arreglo
    print *, 'sum(a):', sum(a)

    ! multiplicar dos arreglos elemento a elemento
    c = a * b
    print *, 'a * b:', c

    ! multiplicar todos los elementos del arreglo por un escalar
    c = x * b
    print *, 'x * b:', c

    ! aplicar una función a todos los elementos del arreglo
    c = abs(b)
    print *, 'abs(b):', c
    

end program operaciones_arreglos
