program aprobado
    implicit none
    integer :: nota

    print *, 'Que nota obtuvo: '
    read *, nota

    if (nota >= 55) then
        print *, 'Felicitaciones'
    end if
end program aprobado
