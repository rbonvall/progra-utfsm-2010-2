program control2
    implicit none
    integer :: p, i, a
    logical :: s

    a = 4
    p = 0
    s = .TRUE.
    do i = 1, 2 * a - 1
        if (s) then
            p = p + 1
        end if
        s = .not. s
    end do

    print *, p
end program control2
