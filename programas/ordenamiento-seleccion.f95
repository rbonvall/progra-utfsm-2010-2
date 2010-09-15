program ordenamiento_seleccion
    implicit none
    integer, parameter :: N = 10
    integer, dimension(N) :: a
    integer :: t, menor
    integer :: i, j, i_menor

    print *, 'Ingrese', N, 'datos'
    do i = 1, N
        read *, a(i)
    end do
    
    do i = 1, N - 1
        menor   = a(i)
        i_menor = i
        do j = i + 1, N
            if (a(j) < menor) then
                menor   = a(j)
                i_menor = j
            end if
        end do

        t = a(i)
        a(i) = a(i_menor)
        a(i_menor) = t
    end do

    print *, 'Los datos ordenados son:'
    do i = 1, N
        print *, a(i)
    end do
end program ordenamiento_seleccion
