program ruteo_diabolico
    implicit none
    integer :: a, b, c, d, e
    a = 1
    b = 2
    c = 3
    d = f(a, b)
    e = f(b, a)
    print *, a, b, c, d, e
contains
    function f(a, b) result(y)
        integer, intent(in) :: a
        integer, intent(in out) :: b
        integer :: y
        b = b + 1
        c = c - 1
        y = a * g(b) / 2
    end function f
    function g(c) result (e)
        integer, intent(in out) :: c
        integer :: e 
        c = c + 1
        e = 2 * c
    end function g
end program ruteo_diabolico
