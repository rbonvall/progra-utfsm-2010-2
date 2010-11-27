program canciones
    implicit none
    
    type :: cancion
        character(len=30) :: nombre, artista, album
        integer :: duracion
        character(len=5) :: categoria
        integer :: nr_reproducciones
        real :: precio
    end type cancion

    type(cancion) :: c
    integer :: st
    character(len=5) :: cat

    print *, 'Ingrese una categoria'
    read *, cat
    
    open (unit=10, file='playlist.dat', form='unformatted', action='read')
    open (unit=11, file='rock.dat',  form='unformatted', action='write')
    open (unit=12, file='pop.dat',   form='unformatted', action='write')
    open (unit=13, file='house.dat', form='unformatted', action='write')
    open (unit=14, file='preferidas.dat', form='unformatted', action='write')

    do
        read (10, iostat=st), c
        if (st /= 0) exit

        if (c % categoria == 'rock') then
            write (11), c
        else if (c % categoria == 'pop') then
            write (12), c
        else if (c % categoria == 'house') then
            write (13), c
        end if

        if (c % nr_reproducciones > 5) then
            write (14), c
        end if

        if (c % categoria == cat .and. c % precio > 0.99) then
            print *, c % nombre
        end if
    end do

    close (10)
    close (11)
    close (12)
    close (13)
    close (14)

end program canciones
