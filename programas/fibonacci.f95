program fibonacci
    implicit none
    integer :: anterior, actual, suma, k
    integer, parameter :: N = 40
    
    print *, 0
    print *, 1

    anterior = 0
    actual = 1
    do k = 1, N
        suma = anterior + actual
        anterior = actual
        actual = suma
        print *, actual
    end do
end program fibonacci
