program triangulos
    implicit none
    real :: a, b, c

    print *, 'Ingrese los tres lados del triangulo'
    read *, a, b, c

    if (a == b .and. b == c) then
        print *, 'El triangulo es equilatero'
    else if (a == b .or. a == c .or. b == c) then
        print *, 'El triangulo es isoceles'
    else
        print *, 'El triangulo es escaleno'
    end if
end program triangulos
