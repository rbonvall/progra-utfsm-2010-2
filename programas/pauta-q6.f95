program cinco_mayores
    implicit none
    integer :: i, n, st
    integer :: maximo, anterior
    
    anterior = 999999

    do i = 1, 5
        ! buscar el maximo valor
        ! que no haya sido mostrado antes

        maximo = -999999
        open (10, file='numeros.txt', action='read')
        do
            read (10, *, iostat=st), n
            if (st /= 0) exit

            if (n > maximo .and. n < anterior) then
                maximo = n
            end if
        end do
        close (10)

        print *, maximo
        anterior = maximo
    end do

end program cinco_mayores
