program bisiesto
    implicit none
    integer :: year

    print *, 'Ingrese el año: '
    read *, year

    if (mod(year, 4) == 0 .and. (mod(year, 100) /= 0) .or. &
                                (mod(year, 400) == 0)) then
        print *, 'El año ', year, ' es bisiesto'
    else
        print *, 'El año ', year, ' no es bisiesto'
    end if
end program bisiesto
