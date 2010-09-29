program cuenta_letras
    implicit none
    character(len=50) :: oracion
    integer, dimension(26) :: frecuencias
    integer :: i

    print *, 'Ingrese una oracion'
    read '(A)', oracion
    frecuencias = contar_letras(oracion)
    do i = 1, 26
        if (frecuencias(i) > 0) then
            print *, letra(i), frecuencias(i)
        end if
    end do

contains

    function contar_letras(s) result(frecs)
        character(len=*) :: s
        character :: letra
        integer, dimension(26) :: frecs
        integer :: i, ord

        frecs = 0
        do i = 1, len(s)
            letra = s(i:i)
            ord = orden(letra)
            if (ord /= 0) then
                frecs(ord) = frecs(ord) + 1
            end if
        end do

    end function
    
    function orden(c) result(n)
        character :: c
        integer :: n

        n = 0
        if (iachar('a') <= iachar(c) .and. iachar(c) <= iachar('z')) then
            n = iachar(c) - iachar('a') + 1
        else if (iachar('A') <= iachar(c) .and. iachar(c) <= iachar('Z')) then
            n = iachar(c) - iachar('A') + 1
        end if
    end function

    function letra(i) result(c)
        character :: c
        integer :: i

        c = achar(iachar('a') + i - 1)
    end function letra
        

end program cuenta_letras
