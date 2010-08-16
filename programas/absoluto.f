program valor_absoluto
    implicit none
    real :: a, x

    read *, x

    if (x < 0) then
        a = -x
    else
        a = x
    end if

    print *, a
end program valor_absoluto

