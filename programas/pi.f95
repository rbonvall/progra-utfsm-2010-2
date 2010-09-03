program estimar_pi
    implicit none
    real :: suma, pi, termino
    integer :: n, signo

    termino = 1.0 ! para asegurarse de entrar al ciclo
    suma = 0.0
    n = 1
    signo = +1
    do while (abs(termino) >= 1e-5)
        termino = signo * (1.0 / n)
        suma = suma + termino
print *, termino, suma
        signo = -signo
        n = n + 2
    end do
    pi = 4 * suma

    print *, pi
end program estimar_pi

    
