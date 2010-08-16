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
    do i = 1, exponente
        resultado = resultado * base
    end do

    ! salida
    print *, resultado

end program potencia

