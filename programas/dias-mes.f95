program dias_mes
    implicit none
    integer, dimension(12) :: dias = (/ 31, 28, 31, 30, &
                                        31, 30, 31, 31, &
                                        30, 31, 30, 31 /)
    integer :: mes

    print *, 'Ingrese el numero del mes'
    read *, mes
    print *, 'El mes ', mes, ' tiene ', dias(mes), ' dias'
end program dias_mes

