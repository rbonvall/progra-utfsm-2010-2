program potencia
    implicit none
    real :: base, resultado
    integer :: exponente, i

    read *, base
    read *, exponente

    resultado = 1
    do i = 1, exponente
        resultado = resultado * base
    end do

    print *, resultado
end program potencia
