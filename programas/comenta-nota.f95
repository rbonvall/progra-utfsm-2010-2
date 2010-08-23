program comenta_nota
    implicit none
    integer :: nota

    print *, 'Ingrese su nota:'
    read *, nota

    if (nota < 40) then
        print *, 'Pesimo'
    else if (nota < 55) then
        print *, 'Mal'
    else if (nota < 70) then
        print *, 'Bien'
    else if (nota <= 100) then
        print *, 'Excelente'
    else
        print *, '¡Mentira!'
    end if
end program
