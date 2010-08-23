program modulo
    implicit none
    integer :: i

    do i = -10, 10
       print *, i, 'mod', 3, '==', mod(i, 3)
    end do
end program modulo
