program clasifica_letras
    implicit none
    character :: c

    print *, 'Ingrese una letra'
    read *, c

    select case (c)
        case ('a', 'e', 'i', 'o', 'u')
            print *, c, ' es una vocal'
        case ('b', 'c', 'd', 'f', 'g', 'h', 'j', &
              'k', 'l', 'm', 'n', 'p', 'q', 'r', &
              's', 't', 'v', 'w', 'x', 'y', 'z')
            print *, c, ' es una consonante'
        case default
            print *, c, ' es un simbolo'
    end select

end program clasifica_letras
