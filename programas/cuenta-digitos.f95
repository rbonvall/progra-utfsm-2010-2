program cuenta_digitos
    implicit none
    integer :: n, c

    print *, 'Ingrese un numero entero'
    read *, n

    c = 0
    do while (n /= 0)
        c = c + 1
        n = n / 10
    end do

    print *, 'El numero tiene', c, 'digitos'

end program cuenta_digitos
