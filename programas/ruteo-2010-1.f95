program ruteo
    implicit none
    logical :: t
    integer :: i, j

    j = 5
    do i = 4, 2, -1
        j = 6 - mod(i, 2)
    end do
    t = j > mod(j, 5)
    if (t) then
        print *, 'j =', j
        t = .FALSE.
    else
        print *, 'j =', j
        t = .TRUE.
    end if

end program ruteo
