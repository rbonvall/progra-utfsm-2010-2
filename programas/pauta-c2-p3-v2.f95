program errores_reportes
    implicit none
    integer, parameter :: N = 10

    integer, dimension(N, 3) :: M  ! (2)

    ! (3)
    call llena_reporte(M)
    call errores(M)

contains
    subroutine llena_reporte(reporte)
        integer, dimension(N, 3), intent(in out) :: reporte
    end subroutine llena_reporte

    subroutine errores(reporte)
        integer, dimension(N, 3), intent(in out) :: reporte
        integer :: i, j  ! (2)
        integer :: suma  ! (1)

        do i = 1, N  ! (6)
            if (reporte(i, 1) /= -1) then  ! (4)

                suma = reporte(i, 3)  ! (1)

                do j = i + 1, N  ! (6)
                    if (reporte(i, 1) == reporte(j, 1)) then  ! (3)
                    
                        if (reporte(i, 2) == reporte(j, 2)) then   ! (3)
                            print *, 'Error 1, maquina ', reporte(j, 1), &
                                     'repetida en ', reporte(j, 2)   ! (1)
                        end if

                        suma = suma + reporte(j, 3)  ! (3)
                        reporte(j, 1) = -1  ! (2)

                    end if
                end do
                if (suma > 8) then  ! (2)
                    print *, 'Error 2, maquina ', reporte(i, 1), &
                             'tiene mas de 8 horas'  ! (1)
                end if
            end if
        end do
    end subroutine errores

end program errores_reportes
