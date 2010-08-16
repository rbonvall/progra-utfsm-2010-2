program convertir_fahrenheit
    implicit none
    real :: f
    real :: c

    read *, f

    c = (f - 32) * 5 / 9

    print *, c
end program convertir_fahrenheit
