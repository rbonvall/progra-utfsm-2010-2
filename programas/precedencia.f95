program precedencia
    implicit none

    print *, 2 ** 3 * 4 - 5 * 6 ** 7
    print *
    print *, 3 + 4 * 5
    print *, (3 + 4) * 5
    print *, 3 + (4 * 5)
    print *
    print *, 4 ** 3 ** 2
    print *, (4 ** 3) ** 2
    print *, 4 ** (3 ** 2)
    print *
    print *, 4 - 3 - 2
    print *, (4 - 3) - 2
    print *, 4 - (3 - 2)
    print *
    print *, (3 + (4 - 5) * ((6 - 7) / 8)) ** 2
    print *, .TRUE. .or. .FALSE. .and. .FALSE. .or. .not. .TRUE.
    print *, mod(10 ** 4 + 2, 6 + 5 / 4)
    print *
end program precedencia
