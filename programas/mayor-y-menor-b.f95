program mayor_y_menor
    implicit none
    real :: x, mayor, menor
    integer :: i
    integer, parameter :: N = 10

    print *, 'Ingrese', N, 'valores'

    read *, x
    menor = x
    mayor = x
    do i = 2, N
        read *, x
        if (x < menor) then
            menor = x
        end if
        if (x > mayor) then
            mayor = x
        end if
    end do

    print *, 'El menor es', menor
    print *, 'El mayor es', mayor
end program mayor_y_menor
