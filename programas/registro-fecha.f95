program registro_fecha
    implicit none

    type :: fecha
        integer :: dia
        integer :: mes
        integer :: anno
    end type fecha

    type(fecha) :: hoy

    hoy%dia = 18
    hoy%mes = 10
    hoy%anno = 2010

    print *, 'Hoy es', hoy%dia, '/', hoy%mes, '/', hoy%anno
end program registro_fecha
