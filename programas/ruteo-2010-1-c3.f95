program ruteo
    implicit none

    type :: alumno
        character(len=20) :: nombre
        integer :: edad
        character :: sexo
    end type alumno

    type(alumno) :: a
    integer :: t1, t2, t3, t4, t5, t6
    integer :: st

    open (unit=10, file='alumnos.dat', action='read', form='unformatted')
    open (unit=11, file='rangos.txt', action='read')

    read (11, *), t1, t2
    read (11, *), t3, t4
    read (11, *), t5, t6

    do
        read (10, iostat=st), a
        if (st /= 0) exit

        if (a % edad < 18) then
            if (a % sexo == 'F') then
                t1 = t1 + 1
            else
                t2 = t2 + 1
            end if
        else if (a % edad < 25) then
            if (a % sexo == 'F') then
                t3 = t3 + 1
            else
                t4 = t4 + 1
            end if
        else
            if (a % sexo == 'F') then
                t5 = t5 + 1
            else
                t6 = t6 +1
            end if
        end if
    end do

    close (11)

    open (unit=11, file='rangos.txt', action='write')
    write (11, *), t1, t2
    write (11, *), t3, t4
    write (11, *), t5, t6
    close (11)

    close (10)
    
end program ruteo
