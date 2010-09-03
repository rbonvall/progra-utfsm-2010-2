program set_tenis
    implicit none
    integer :: a, b

    print *, 'Ingrese juegos ganados por A y B:'
    read *, a, b

    select case (a)

        case (0:4)
            select case (b)
                case (0:5)
                    print *, 'Aun no termina'
                case (6)
                    print *, 'Gano B'
                case default
                    print *, 'Invalido'
            end select

        case (5)
            select case (b)
                case (0:6)
                    print *, 'Aun no termina'
                case (7)
                    print *, 'Gano B'
                case default
                    print *, 'Invalido'
            end select


        case (6)
            select case (b)
                case (0:4)
                    print *, 'Gano A'
                case (5:6)
                    print *, 'Aun no termina'
                case (7)
                    print *, 'Gano B'
                case default
                    print *, 'Invalido'
            end select

        case (7)
            select case (b)
                case (5:6)
                    print *, 'Gano A'
                case default
                    print *, 'Invalido'
            end select

        case default
            print *, 'Invalido'

    end select

end program set_tenis
