program palindromo
    implicit none
    character(len=32) :: palabra
    integer :: i, j

    print *, 'Ingrese una palabra'
    read *, palabra

    i = 1
    j = len_trim(palabra)
    do while (palabra(i:i) == palabra(j:j) .and. i < j)
        i = i + 1
        j = j - 1
    end do

    if (i >= j) then
        print *, trim(palabra), ' es palindromo'
    else
        print *, trim(palabra), ' no es palindromo'
    end if
end program palindromo
