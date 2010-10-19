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
    type(fecha) :: nacimiento, hoy

    print *, 'Ingrese su fecha de nacimiento:'
    read *, nacimiento

    print *, 'Ingrese la fecha de hoy:'
    read *, hoy

    print *, 'Usted tiene', dias_entre(nacimiento, hoy), 'dias de edad'

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


    function dias_entre(f_inicio, f_fin) result(n)
        type(fecha), intent(in) :: f_inicio, f_fin
        type(fecha) :: f
        integer :: n

        n = 0

        ! asegurarse que las fechas estén en el orden correcto
        if (.not. fecha_menor_que(f_inicio, f_fin)) then
            return   ! salir de la función
        end if

        ! avanzar desde el dia inicial al final llevando la cuenta
        f = f_inicio
        do while (.not. fecha_iguales(f, f_fin))
            f = dia_siguiente(f)
            n = n + 1
        end do
    end function dias_entre


    function fecha_menor_que(f1, f2) result(m)
        type(fecha), intent(in) :: f1, f2
        logical :: m
        
        if (f1 % anno /= f2 % anno) then
            m = (f1 % anno < f2 % anno)
        else if (f1 % mes /= f2 % mes) then
            m = (f1 % mes < f2 % mes)
        else
            m = (f1 % dia < f2 % dia)
        end if
    end function fecha_menor_que


    function fecha_iguales(f1, f2) result(iguales)
        type(fecha), intent(in) :: f1, f2
        logical :: iguales

        iguales = (f1 % dia == f2 % dia .and. &
                   f1 % mes == f2 % mes .and. &
                   f1 % anno == f2 % anno)
    end function fecha_iguales

end program funciones_fechas

