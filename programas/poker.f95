program poker
    implicit none

    type :: carta
        integer :: valor     ! 1, ..., 13
        character :: pinta   ! C, D, T, P
    end type carta

    type(carta), dimension(5) :: mano
    integer :: i

    do
        print *, 'Ingrese las cinco cartas de la mano'
        read *, (mano(i), i = 1, 5)
        
        if (es_escalera(mano)) then
           print *, 'La mano es una escalera'
        else if (es_full(mano)) then
            print *, 'La mano es un full'
        else if (es_color(mano)) then
            print *, 'La mano es un color'
        else
            print *, 'No es nada'
        end if
        print *
    end do

contains

    function es_full(mano) result(e)
        type(carta), dimension(5) :: mano
        logical :: e
        integer, dimension(13) :: cuentas 

        cuentas = contar_valores(mano)
        e = any(cuentas == 2) .and. any(cuentas == 3)
    end function es_full


    function es_color(mano) result(e)
        type(carta), dimension(5) :: mano
        logical :: e

        e = all(mano(:) % pinta == mano(1) % pinta)
    end function es_color


    function es_escalera(mano) result(e)
        type(carta), dimension(5) :: mano
        logical :: e
        integer, dimension(13) :: cuentas 

        cuentas = contar_valores(mano)
        e = maxval(cuentas) == 1 .and.  &
            primer_uno(cuentas) + 4 == ultimo_uno(cuentas)
    end function es_escalera


    function contar_valores(mano) result(cuentas)
        type(carta), dimension(:) :: mano
        integer, dimension(13) :: cuentas
        integer :: i

        cuentas = 0
        do i = 1, size(mano)
            cuentas(mano(i) % valor) = cuentas(mano(i) % valor) + 1
        end do
    end function contar_valores

    function primer_uno(a) result(i)
        integer, dimension(:), intent(in) :: a
        integer :: i

        do i = 1, size(a)
            if (a(i) == 1) then
                return
            end if
        end do
    end function primer_uno

    function ultimo_uno(a) result(i)
        integer, dimension(:), intent(in) :: a
        integer :: i

        do i = size(a), 1, -1
            if (a(i) == 1) then
                return
            end if
        end do
    end function ultimo_uno

end program poker
