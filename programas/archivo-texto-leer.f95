program archivo_texto_leer
    implicit none
    integer :: a, b, c

    open (unit=10, file='test.txt', status='old', action='read')
    read (10, *), a
    read (10, *), b
    read (10, *), c
    close (10)

    print *, 'Los numeros son:', a, b, c
end program archivo_texto_leer
