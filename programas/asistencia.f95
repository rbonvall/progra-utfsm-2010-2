program control_asistencia
    implicit none
    integer, parameter :: NR_ALUMNOS = 4
    integer, parameter :: NR_CLASES = 7
    logical, dimension(NR_ALUMNOS, NR_CLASES) :: asistencia
    character(len=10), dimension(NR_ALUMNOS) :: nombres
    integer, dimension(NR_ALUMNOS) :: totales_alumnos
    integer :: i
    
    call leer_nombres(nombres)
    call leer_asistencia(nombres, asistencia)
    totales_alumnos = calcular_totales_alumnos(asistencia)
    i = indice_mayor(totales_alumnos)
    print *, 'El alumno mas responsable fue ', nombres(i)
    print *, trim(nombres(i)), ' asistio a ', &
             totales_alumnos(i), 'clases'

contains

    subroutine leer_nombres(alumnos)
        character(len=*), dimension(NR_ALUMNOS), intent(in out) :: alumnos
        integer :: i

        print *, 'Ingrese los nombres de los alumnos'
        do i = 1, NR_ALUMNOS
            read *, alumnos(i)
        end do
    end subroutine leer_nombres

    subroutine leer_asistencia(nombres, lista)
        character(len=*), dimension(NR_ALUMNOS), intent(in) :: nombres
        logical, dimension(NR_ALUMNOS, NR_CLASES), intent(in out) :: lista
        integer :: alumno, clase

        do alumno = 1, NR_ALUMNOS
            print *, 'Ingrese asistencia de ', nombres(alumno)
            read *, (lista(alumno, clase), clase = 1, NR_CLASES)
        end do
        print *, lista
    end subroutine leer_asistencia

    function calcular_totales_alumnos(lista) result(totales)
        logical, dimension(NR_ALUMNOS, NR_CLASES), intent(in) :: lista
        integer, dimension(NR_ALUMNOS) :: totales
        integer :: alumno, clase

        totales = 0
        do alumno = 1, NR_ALUMNOS
            do clase = 1, NR_CLASES
                if (lista(alumno, clase)) then
                    totales(alumno) = totales(alumno) + 1
                end if
            end do
        end do
    end function calcular_totales_alumnos

    function indice_mayor(datos) result(i_mayor)
        integer, dimension(:) :: datos
        integer :: i, i_mayor
        integer :: mayor

        i_mayor = 1
        mayor = datos(1)
        do i = 2, size(datos)
            if (datos(i) > mayor) then
                mayor = datos(i)
                i_mayor = i
            end if
        end do
    end function

end program control_asistencia
