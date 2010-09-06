program promedio_notas
    implicit none
    integer, parameter :: N = 6
    integer, dimension(N) :: notas
    integer :: i

    print *, 'Ingrese sus notas'

    do i = 1, N
        read *, notas(i)
    end do

    print *, 'Su promedio es', nint(sum(notas) / real(N))

end program promedio_notas
