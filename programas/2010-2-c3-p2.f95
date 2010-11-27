program hoteles
    implicit none
    
    type :: hotel
        integer :: codigo
        character(len=60) :: nombreH
        integer :: hTotal, hOcupada
    end type hotel

    type :: reserva
        integer :: codigo
        character(len=60) :: nombreP
        integer :: RUN
    end type reserva

    integer, parameter :: H = 25, R = 50
    type(hotel),   dimension(H) :: arr_hoteles
    type(reserva), dimension(R) :: arr_reservas

    integer :: i, j
    integer :: disponibles, maximo_disponibles, hotel_con_maximo_disponibles

    do i = 1, H
        print *, 'Ingrese hotel', i
        read *, arr_hoteles(i)
    end do

    do j = 1, R
        print *, 'Ingrese reserva', j
        read *, arr_reservas(j)
    end do

    maximo_disponibles = 0
    hotel_con_maximo_disponibles = 0
    do i = 1, H
        disponibles = arr_hoteles(i) % hTotal - arr_hoteles(i) % hOcupada
        if (disponibles > maximo_disponibles) then
            hotel_con_maximo_disponibles = i
            maximo_disponibles = disponibles
        end if
    end do
    print *, 'El hotel con mas habitaciones disponibles es ', &
             arr_hoteles(hotel_con_maximo_disponibles) % nombreH

    do j = 1, R

        ! buscar hotel por el codigo
        do i = 1, H
            if (arr_hoteles(i) % codigo == arr_reservas(j) % codigo) then
                exit
            end if
        end do

        if (arr_hoteles(i) % hocupada < arr_hoteles(i) % htotal) then
            arr_hoteles(i) % hocupada = arr_hoteles(i) % hocupada + 1
        else
            print *, 'Reserva no satisfecha.'
            print *, 'Nombre:', arr_reservas(j) % nombreP
            print *, 'RUN:',    arr_reservas(j) % RUN
        end if

    end do

end program hoteles
