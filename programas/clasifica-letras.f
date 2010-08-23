program clasifica_letras
    implicit none
    character :: c

    print *, 'Ingrese un caracter'
    read *, c

    select case (c)
        case ('a', 'e', 'i', 'o', 'u')
            print *, c, ' es una vocal minuscula'
        case ('A', 'E', 'I', 'O', 'U')
            print *, c, ' es una vocal mayuscula'
        case ('b', 'c', 'd', 'f', 'g', 'h', 'j', &
              'k', 'l', 'm', 'n', 'p', 'q', 'r', &
              's', 't', 'v', 'w', 'x', 'y', 'z')
            print *, c, ' es una consonante minuscula'
        case ('B', 'C', 'D', 'F', 'G', 'H', 'J', &
              'K', 'L', 'M', 'N', 'P', 'Q', 'R', &
              'S', 'T', 'V', 'W', 'X', 'Y', 'Z')
            print *, c, ' es una consonante mayuscula'
        case ('0', '1', '2', '3', '4', &
              '5', '6', '7', '8', '9')
            print *, c, ' es un digito'
        case default
            print *, c, ' es un simbolo'
    end select

end program clasifica_letras
