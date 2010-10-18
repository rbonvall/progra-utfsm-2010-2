program funciones_fechas
    implicit none

    type :: fecha
        integer :: dia
        integer :: mes
        integer :: anno
    end type fecha

    integer, dimension(12), parameter :: dias_mes = (/31, 28, 31, 30, &
                                                      31, 30, 31, 31, &
                                                      30, 31, 30, 31/)
    type(fecha) :: f

    do
        print *, 'Ingrese una fecha:'
        read *, f
        if (es_fecha_valida(f)) then
            print *, 'El dia siguiente es: ', dia_siguiente(f)
        else
            print *, 'Fecha invalida'
        end if
        print *
    end do

contains

    function es_fecha_valida(f) result(v)
        type(fecha), intent(in) :: f
        logical :: v

        v = (1 <= f % mes .and. f % mes <= 12 .and.  &
             1 <= f % dia .and. f % dia <= dias_mes(f % mes))
    end function es_fecha_valida

    function dia_siguiente(f) result (fs)
        type(fecha), intent(in) :: f
        type(fecha) :: fs
        
        fs = f
        fs % dia = fs % dia + 1
        if (fs % dia > dias_mes(fs % mes)) then
            fs % mes = fs % mes + 1
            fs % dia = 1
        end if
        if (fs % mes > 12) then
            fs % anno = fs % anno + 1
            fs % mes = 1
        end if
    end function dia_siguiente

end program funciones_fechas

