program paso_parametros
    implicit none
    integer :: w, x, y, z

    w = 1
    x = 2
    y = 3
    z = 4

    call f(w, x, y, z)

    print *, w  ! imprime 9
    print *, x  ! imprime 2
    print *, y  ! imprime 7
    print *, z  ! imprime 6

contains

    subroutine f(a, b, c, d)
        integer :: a
        integer, intent(in) :: b
        integer, intent(out) :: c
        integer, intent(inout) :: d

        a = 9    ! cambia la variable local
        !b = 8   ! ilegal
        c = 7    ! cambia la variable pasada
        d = 6    ! cambia la variable pasada

    end subroutine f

end program paso_parametros
