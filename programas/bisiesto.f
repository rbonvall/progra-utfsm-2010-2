program bisiesto
    implicit none
    integer :: year

    print *, 'Ingrese el año: '
    read *, year

    if (MOD(year, 4) == 0 .AND. (MOD(year, 100) /= 0) .OR. &
                                (MOD(year, 400) == 0)) then
        print *, 'El año ', year, ' es bisiesto'
    else
        print *, 'El año ', year, ' no es bisiesto'
    end if
end program bisiesto
