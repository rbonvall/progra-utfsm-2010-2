program errores_reportes
    implicit none
    integer, parameter :: N = 10

    integer, dimension(N, 3) :: M  ! (2)

    ! (3)
    call llena_reporte(M)
    call error1(M)
    call error2(M)

contains
    subroutine llena_reporte(reporte)
        integer, dimension(N, 3), intent(in out) :: reporte
    end subroutine llena_reporte

    subroutine error1(reporte)
        integer, dimension(N, 3), intent(in out) :: reporte
        integer :: i, j  ! (1)

        do i = 1, N  ! (3)
            if (reporte(i, 1) /= -1) then  ! (2)
                do j = i + 1, N  ! (3)
                    if (reporte(i, 1) == reporte(j, 1) .and. &
                        reporte(i, 2) == reporte(j, 2)) then   ! (4)

                        print *, 'Error 1, maquina ', reporte(j, 1), &
                                 'repetida en ', reporte(j, 2)   ! (1)
                        reporte(j, 1) = -1  ! (1)
                    end if
                end do
            end if
        end do
    end subroutine error1

    subroutine error2(reporte)
        integer, dimension(N, 3), intent(in out) :: reporte
        integer :: i, j  ! (1)
        integer :: suma  ! (1)

        do i = 1, N  ! (3)
            if (reporte(i, 1) /= -1) then  ! (2)
                suma = reporte(i, 3)  ! (1)
                do j = i + 1, N  ! (3)
                    if (reporte(i, 1) == reporte(j, 1)) then  ! (2)
                        suma = suma + reporte(j, 3)  ! (3)
                        reporte(j, 1) = -1  ! (1)
                    end if
                end do
                if (suma > 8) then  ! (2)
                    print *, 'Error 2, maquina ', reporte(i, 1), &
                             'tiene mas de 8 horas'  ! (1)
                end if
            end if
        end do
    end subroutine error2

end program errores_reportes
