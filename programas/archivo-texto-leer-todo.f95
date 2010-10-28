program archivo_texto_leer_todo
    implicit none
    integer :: a, st

    print *, 'Los numeros son:'
    open (unit=10, file='test.txt', status='old', action='read')
    do
        read (10, *, iostat=st), a
        if (st /= 0) exit

        print *, a
    end do
    close (10)

end program archivo_texto_leer_todo
