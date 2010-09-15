program liga_futbol
    implicit none
    integer, parameter :: NR_EQUIPOS = 4
    character(len=10), dimension(NR_EQUIPOS) :: equipos
    integer, dimension(NR_EQUIPOS, NR_EQUIPOS, 2) :: goles
    integer, dimension(NR_EQUIPOS) :: puntos, dif_goles
    integer :: i, j

    print *, 'Ingrese los nombres de los equipos:'
    do i = 1, NR_EQUIPOS
        read '(A)', equipos(i)
    end do
    print *

    print *, 'Ingrese los resultados'
    do i = 1, NR_EQUIPOS
        do j = i + 1, NR_EQUIPOS
            print *, trim(equipos(i)), '-', trim(equipos(j))
            read *, goles(i, j, 1), goles(i, j, 2)
        end do
    end do

    ! inicializar en cero todos los elementos de los arreglos
    puntos = 0
    dif_goles = 0

    do i = 1, NR_EQUIPOS
        do j = i + 1, NR_EQUIPOS

            ! sumar puntos
            if (goles(i, j, 1) > goles(i, j, 2)) then
                puntos(i) = puntos(i) + 3
            else if (goles(i, j, 1) < goles(i, j, 2)) then
                puntos(j) = puntos(j) + 3
            else
                puntos(i) = puntos(i) + 1
                puntos(j) = puntos(j) + 1
            end if

            ! sumar goles
            dif_goles(i) = dif_goles(i) + goles(i, j, 1) - goles(i, j, 2)
            dif_goles(j) = dif_goles(j) - goles(i, j, 1) + goles(i, j, 2)
        end do
    end do
    print *

    print *, 'Equipo             Pts         Dif'
    do i = 1, NR_EQUIPOS
        print *, equipos(i), puntos(i), dif_goles(i)
    end do

end program liga_futbol
