program burbuja
    implicit none
    integer :: a, b, c, t

    read *, a, b, c

    t = b + c
    b = (t - abs(b - c)) / 2
    c = t - b

    t = a + b
    a = (t - abs(a - b)) / 2
    b = t - a

    t = b + c
    b = (t - abs(b - c)) / 2
    c = t - b

    print *, a, b, c
end program burbuja
