program cuadrado_magico
    implicit none
    integer, parameter :: N = 4
    integer, dimension(N, N) :: cuadrado
    integer, dimension(N) :: sumas_filas, sumas_columnas
    integer :: suma_diagonal_1, suma_diagonal_2
    integer :: i, j

    print *, 'Ingrese el cuadrado:'
    do i = 1, N
        read *, (cuadrado(i, j), j = 1, N)
    end do

    suma_diagonal_1 = 0
    suma_diagonal_2 = 0
    do i = 1, N
        sumas_filas(i)    = sum(cuadrado(i, :))
        sumas_columnas(i) = sum(cuadrado(:, i))
        suma_diagonal_1 = suma_diagonal_1 + cuadrado(i, i)
        suma_diagonal_2 = suma_diagonal_2 + cuadrado(i, N + 1 - i)
    end do

    if (suma_diagonal_1 == suma_diagonal_2      .and. &
            all(suma_diagonal_1 == sumas_filas) .and. &
            all(suma_diagonal_1 == sumas_columnas)) then
        print *, 'El cuadrado es magico.'
    else
        print *, 'El cuadrado no es magico.'
    end if
end program cuadrado_magico
