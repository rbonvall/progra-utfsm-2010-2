program es_fibonacci
    implicit none
    integer :: anterior, actual, suma, k, n
    
    print *, 'Ingrese un numero entero'
    read *, n

    anterior = 0
    actual = 1
    do while (actual < n)
        suma = anterior + actual
        anterior = actual
        actual = suma
    end do

    if (n == 0 .or. actual == n) then
        print *, 'si'
    else
        print *, 'no'
    end if
end program es_fibonacci
