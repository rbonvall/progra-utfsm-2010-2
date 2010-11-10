program archivo_binario_leer_todo
    implicit none
    
    type :: producto
        integer :: codigo
        integer :: precio
        character(len=8) :: nombre
    end type producto

    type(producto) :: p
    integer :: st

    open (unit=10, file='test.dat',  action='read', form='unformatted')
    do
        read (10, iostat=st), p
        if (st /= 0) exit
        print *, p
    end do
    close (10)

end program archivo_binario_leer_todo
