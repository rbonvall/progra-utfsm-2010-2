program cuadrado_magico
    implicit none
    integer, parameter :: N = 4
    integer, dimension(N, N) :: cuadrado
    integer, dimension(N) :: sumas_filas, sumas_columnas
    integer :: suma_diagonal_1, suma_diagonal_2
    integer :: valor
    integer :: i, j
    logical :: es_magico

    ! entrada
    print *, 'Ingrese el cuadrado:'
    do i = 1, N
        read *, (cuadrado(i, j), j = 1, N)
    end do

    ! inicializar todas las sumas en cero
    do i = 1, N
        sumas_filas(i) = 0
        sumas_columnas(i) = 0
    end do
    suma_diagonal_1 = 0
    suma_diagonal_2 = 0

    ! recorrer todos los elementos del cuadrado,
    ! actualizando la suma correspondiente a cada uno de ellos
    do i = 1, N
        do j = 1, N
            sumas_filas(i)    = sumas_filas(i)    + cuadrado(i, j)
            sumas_columnas(j) = sumas_columnas(j) + cuadrado(i, j)
        end do
        suma_diagonal_1 = suma_diagonal_1 + cuadrado(i, i)
        suma_diagonal_2 = suma_diagonal_2 + cuadrado(i, N + 1 - i)
    end do

    ! comparar todas las sumas con un valor de referencia
    valor = sumas_filas(1)
    es_magico = .TRUE.
    do i = 1, N
        if (sumas_filas(i) /= valor .or. sumas_columnas(i) /= valor) then
            es_magico = .FALSE.
        end if
    end do
    if (suma_diagonal_1 /= valor .or. suma_diagonal_2 /= valor) then
        es_magico = .FALSE.
    end if

    ! salida
    if (es_magico) then
        print *, 'El cuadrado es magico.'
    else
        print *, 'El cuadrado no es magico.'
    end if
end program cuadrado_magico
