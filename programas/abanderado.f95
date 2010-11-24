program abanderado
    implicit none
    
    type :: llamada
        character(len=20) :: nombre
        integer :: telefono
        integer :: voto
    end type llamada

    type(llamada) :: ll
    integer :: d1, d2, d3
    integer :: v, m, st

    d1 = 0
    d2 = 0
    d3 = 0

    open (unit=10, file='concurso.dat', &
          form='unformatted', action='read')
    do
        read (10, iostat=st), ll
        if (st /= 0) exit

        v = ll % voto
        if (v == 1) then
            d1 = d1 + 1
        else if (v == 2) then
            d2 = d2 + 1
        else if (v == 3) then
            d3 = d3 + 1
        end if
    end do
    close (10)

    print *, 'Total deportista 1:', d1
    print *, 'Total deportista 2:', d2
    print *, 'Total deportista 3:', d3

    m = max(d1, d2, d3)
    if (m == d1) then
        print *, 'El ganador es el deportista 1'
    else if (m == d2) then
        print *, 'El ganador es el deportista 2'
    else
        print *, 'El ganador es el deportista 3'
    end if


end program abanderado
