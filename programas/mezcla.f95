program mezcla
    implicit none

    integer :: a, b
    integer :: st_a, st_b

    open (unit=10, file='a.txt', action='read')
    open (unit=11, file='b.txt', action='read')
    open (unit=12, file='c.txt', action='write')

    read (10, *, iostat=st_a), a
    read (11, *, iostat=st_b), b

    do
        if (st_a /= 0 .and. st_b /= 0) then
            exit

        else if (st_a == 0 .and. st_b /= 0) then
            write (12, *), a
            read (10, *, iostat=st_a), a

        else if (st_a /= 0 .and. st_b == 0) then
            write (12, *), b
            read (11, *, iostat=st_b), b

        else if (a < b) then
            write (12, *), a
            read (10, *, iostat=st_a), a

        else
            write (12, *), b
            read (11, *, iostat=st_b), b

        end if
    end do

    close (10)
    close (11)
    close (12)
    
end program mezcla
