program resolver_cuadratica
    implicit none
    real :: a, b, c
    real :: d, x1, x2

    read *, a, b, c
    d = (b ** 2) - (4 * a * c)

    if (d > 0) then
        x1 = (-b + sqrt(d)) / (2 * a)
        x2 = (-b - sqrt(d)) / (2 * a)
        print *, 'Solucion 1: ', x1
        print *, 'Solucion 2: ', x2
    end if

    if (d == 0) then
        x1 = -b / (2 * a)
        print *, 'Solucion unica: ', x1
    end if

    if (d < 0) then
        print *, 'No hay soluciones reales'
    end if

end program resolver_cuadratica
