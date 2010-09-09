program palindromo
    implicit none
    character(len=32) :: palabra
    integer :: i, j, largo
    logical :: es_palindromo

    print *, 'Ingrese una palabra'
    read *, palabra

    largo = len_trim(palabra)
    es_palindromo = .TRUE.
    do i = 1, largo / 2
        if (palabra(i:i) /= palabra(largo + 1 - i : largo + 1 - i)) then
            es_palindromo = .FALSE.
        end if
    end do

    if (es_palindromo) then
        print *, trim(palabra), ' es palindromo'
    else
        print *, trim(palabra), ' no es palindromo'
    end if
end program palindromo
