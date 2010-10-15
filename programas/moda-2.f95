program moda
    implicit none
    integer, parameter :: N = 20
    integer, dimension(N) :: datos, cuentas
    integer :: maxima_cuenta
    integer :: i, j

    print *, 'Ingrese', N, 'datos'
    do i = 1, N
        read *, datos(i)
    end do

    ! Para cada valor ingresado,
    ! buscar si aparece antes en el arreglo.
    ! Si no aparece, su cuenta es 1.
    ! Si aparece, es uno más la cuenta anterior.
    do i = 1, N
        cuentas(i) = 1
        do j = i - 1, 1, -1
            if (datos(j) == datos(i)) then
                cuentas(i) = cuentas(j) + 1
                exit
            end if
        end do
    end do

    maxima_cuenta = maxval(cuentas)

    do i = 1, N
        if (cuentas(i) == maxima_cuenta) then
            print *, 'La moda es', datos(i)
        end if
    end do

end program moda
