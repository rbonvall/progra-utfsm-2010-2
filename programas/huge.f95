program hugenum
    implicit none
    integer :: n
    real :: x

    print *, 'Huge integer:', huge(n)
    print *, 'Huge real:',    huge(x)
    print *, 'Tiny real:',    tiny(x)
    !print *, '1e300:', 1e300
    print *, '-Huge integer:', -huge(n)
    print *, '-Huge real:', -huge(x)
end program hugenum
