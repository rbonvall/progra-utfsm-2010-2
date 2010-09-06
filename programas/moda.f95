program calcular_moda
    implicit none
    integer, parameter :: N = 10
    integer, dimension(N) :: datos, cuentas
    integer :: indice_moda, moda, maxima_cuenta
    integer :: i, j

    print *, 'Ingrese', N, 'datos'
    do i = 1, N
        read *, datos(i)
    end do

    ! calcular cuentas parciales
    do i = 1, N
        cuentas(i) = 1
        do j = i - 1, 1, -1
            if (datos(j) == datos(i)) then
                cuentas(i) = cuentas(j) + 1
                exit
            end if
        end do
    end do

    ! encontrar cuántas veces se repite el que más se repite
    maxima_cuenta = cuentas(1)
    do i = 2, N
        maxima_cuenta = max(maxima_cuenta, cuentas(i))
    end do

    ! encontrar el índice del que más se repite
    do i = 1, N
        if (cuentas(i) == maxima_cuenta) then
            indice_moda = i
            exit
        end if
    end do

    moda = datos(indice_moda)

    print *, 'La moda es', moda

end program calcular_moda
