program ejemplo
    implicit none
    real :: x
    real :: y
    integer ::  n

    read *, x, y, n
    print *, (x * x + y * y) ** n
end program ejemplo
