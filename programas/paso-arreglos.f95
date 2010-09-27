program paso_arreglos
    implicit none
    integer, dimension(5) :: a
    integer, dimension(3) :: b

    call llenar_arreglo(a)
    call llenar_arreglo(b)

contains

    subroutine llenar_arreglo(a)
        integer, dimension(:), intent(in out) :: a
        integer :: i
        print *, 'Ingrese', size(a), 'datos'
        do i = 1, size(a)
            read *, a(i)
        end do
    end subroutine llenar_arreglo
    
end program paso_arreglos
