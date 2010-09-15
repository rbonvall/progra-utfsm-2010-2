program ordenamiento_burbuja
    implicit none
    integer, parameter :: N = 10
    integer, dimension(N) :: a
    integer :: t
    integer :: i, j

    print *, 'Ingrese', N, 'datos'
    do i = 1, N
        read *, a(i)
    end do
    
    do i = 1, N - 1
        do j = N, i + 1, -1
            if (a(j - 1) > a(j)) then
                t = a(j - 1)
                a(j - 1) = a(j)
                a(j) = t
            end if
        end do
    end do

    print *, 'Los datos ordenados son:'
    do i = 1, N
        print *, a(i)
    end do
end program ordenamiento_burbuja

