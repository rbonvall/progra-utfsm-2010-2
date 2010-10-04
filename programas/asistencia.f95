program asistencia
    implicit none
    integer, parameter :: NR_ALUMNOS = 4
    integer, parameter :: NR_CLASES = 7
    logical, dimension(NR_ALUMNOS, NR_CLASES) :: lista
    character(len=10), dimension(NR_ALUMNOS) :: nombres
    integer, dimension(NR_ALUMNOS) :: totales_alumnos
    integer, dimension(NR_CLASES) :: totales_clases
    integer :: i
    
    call leer_nombres(nombres)
    call leer_asistencia(nombres, lista)
    totales_alumnos = calcular_totales_alumnos(lista)
    totales_clases  = calcular_totales_clases(lista)
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

    function calcular_totales_alumnos(lista) result(ta)
        logical, dimension(NR_ALUMNOS, NR_CLASES), intent(in) :: lista
        integer, dimension(NR_ALUMNOS) :: ta
    end function calcular_totales_alumnos

    function calcular_totales_clases(lista) result(tc)
        logical, dimension(NR_ALUMNOS, NR_CLASES), intent(in) :: lista
        integer, dimension(NR_CLASES) :: tc
    end function calcular_totales_clases

    function indice_mayor(datos) result(i)
        integer, dimension(:) :: datos
        integer :: i
        i = 1
    end function

end program asistencia
