program potencia

    ! declaraciones
    implicit none
    real :: base, resultado
    integer :: exponente, i

    ! entrada
    read *, base
    read *, exponente

    ! proceso
    resultado = 1
    i = 0
    do
        if (i == exponente) then
            exit
        end if
        resultado = resultado * base
        i = i + 1
    end do

    ! salida
    print *, resultado

end program potencia

