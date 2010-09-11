program substrings
    implicit none
    character(len=20) :: s

    s = 'paralelepipedo'
    print *, s(1:20)   ! paralelepipedo
    print *, s(4:8)    ! alele
    print *, s(10:4)   !
    print *, s(12:)    ! edo
    print *, s(:4)     ! para
    print *, s(7:7)    ! l
end program substrings

