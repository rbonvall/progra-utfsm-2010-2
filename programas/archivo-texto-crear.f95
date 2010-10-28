program archivo_texto_crear
    implicit none
    integer :: a, b, c

    print *, 'Ingrese tres numeros'
    read *, a, b, c

    open (unit=10, file='test.txt', status='new', action='write')
    write (10, *), a
    write (10, *), b
    write (10, *), c
    close (10)
end program archivo_texto_crear
