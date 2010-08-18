program par
    implicit none
    integer :: n

    print *, 'Ingrese un numero'
    read *, n

    select case (MOD(n, 2))
        case (0)
            print *, 'El numero es par'
        case (1)
            print *, 'El numero es impar'
    end select

end program par
