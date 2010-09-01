program palindromo
    implicit none
    integer :: n, original, invertido

    print *, 'Ingrese un numero entero'
    read *, n

    original = n
    invertido = 0
    do while (n /= 0)
        invertido = invertido * 10 + mod(n, 10)
        n = n / 10
    end do

    if (original == invertido) then
        print *, original, 'si es palindromo'
    else
        print *, original, 'no es palindromo'
    end if
end program palindromo
