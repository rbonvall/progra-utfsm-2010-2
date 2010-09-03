program adivinador
    implicit none
    integer :: minimo, maximo, promedio
    logical :: adivinado
    character :: respuesta

    minimo = 0
    maximo = 100
    adivinado = .FALSE.

    do while (.not. adivinado)
        promedio = (minimo + maximo) / 2

        print *, 'El numero es', promedio, '?'
        read *, respuesta

        select case (respuesta)
            case ('<')
                maximo = promedio - 1
            case ('>')
                minimo = promedio + 1
            case ('=')
                adivinado = .TRUE.
        end select
    end do

    print *, 'Bien!'

end program adivinador
