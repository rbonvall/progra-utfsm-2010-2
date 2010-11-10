program archivo_binario_crear
    implicit none

    type :: producto
        integer :: codigo
        integer :: precio
        character(len=8) :: nombre
    end type producto

    type(producto) :: p1, p2, p3, p4, p5

    p1 = producto(12345,  300, 'Piano')
    p2 = producto(40004, 1500, 'Cepillo')
    p3 = producto(99999,  750, 'Camisa')
    p4 = producto(55500,  100, 'Queso')
    p5 = producto(24500,  200, 'Agua')

    open (unit=10, file='test.dat', status='new', action='write', form='unformatted')
    write (10), p1
    write (10), p2
    write (10), p3
    write (10), p4
    write (10), p5
    close (10)
end program archivo_binario_crear
