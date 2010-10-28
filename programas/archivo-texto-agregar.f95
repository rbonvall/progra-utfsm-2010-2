program archivo_texto_agregar
    implicit none
    integer :: a

    print *, 'Ingrese varios numeros, termine con cero'

    open (unit=10, file='test.txt', status='old', action='write', position='append')
    do
        read *, a
        if (a == 0) then
            exit
        end if

        write (10, *), a
    end do
    close (10)
end program archivo_texto_agregar
