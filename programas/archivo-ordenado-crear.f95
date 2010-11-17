program crear_archivo_ordenado
    implicit none

    type :: donante
        integer :: rut
        character(len=20) :: nombre
        integer :: monto
    end type donante

    open (unit=10, file='donantes.dat', form='unformatted', action='write')
    write (10), donante(15274, 'Fulana de Tal',      200)
    write (10), donante(15891, 'Jean Dupont',        150)
    write (10), donante(16443, 'Erika Mustermann',   400)
    write (10), donante(16504, 'Perico Los Palotes',  80)
    write (10), donante(17004, 'Jan Kowalski',       200)
    close (10)

end program crear_archivo_ordenado
