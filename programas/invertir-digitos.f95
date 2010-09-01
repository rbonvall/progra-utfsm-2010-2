program invertir
    implicit none
    integer :: n, invertido, ultimo_digito

    print *, 'Ingrese un numero entero'
    read *, n

    invertido = 0
    do while (n /= 0)
        ultimo_digito = mod(n, 10)
        invertido = invertido * 10 + ultimo_digito
        n = n / 10
    end do

    print *, 'El numero invertido es', invertido
end program invertir
