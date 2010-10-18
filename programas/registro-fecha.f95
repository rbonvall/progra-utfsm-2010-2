program registro_fecha
    implicit none

    type :: fecha
        integer :: dia
        integer :: mes
        integer :: anno
    end type fecha

    type(fecha) :: hoy, mannana

    hoy%dia = 18
    hoy%mes = 10
    hoy%anno = 2010

    mannana = hoy
    mannana%dia = mannana%dia + 1

    print *, 'Hoy es', hoy
    print *, 'Man~ana es', mannana
end program registro_fecha
