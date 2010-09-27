program pp
    implicit none
    integer :: n

    n = 2
    call f(n)
    print *, n

contains

    subroutine f(a)
        integer :: a
        a = 3
    end subroutine f

end program pp
