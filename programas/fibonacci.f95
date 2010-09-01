program fibonacci
    implicit none
    integer :: anterior, actual, suma, k, n

    print *, 'Cuantos numeros de Fibonacci desea?'
    read *, n
    
    print *, 0
    print *, 1

    anterior = 0
    actual = 1
    do k = 3, n
        suma = anterior + actual
        anterior = actual
        actual = suma
        print *, actual
    end do
end program fibonacci
