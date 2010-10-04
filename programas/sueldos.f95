program sueldos
    implicit none
    integer :: n, i, aumento, sueldo, gasto;

    print *, 'Ingrese el numero de trabajadores'
    read *, n
    
    gasto = 0;
    do i = 1, n
        print *, 'Ingrese el sueldo del empleado', i
        read *, sueldo

        if (sueldo < 50000) then
            aumento = 0
        else if (sueldo <= 100000) then
            aumento = 30
        else if (sueldo <= 150000) then
            aumento = 15
        else if (sueldo <= 200000) then
            aumento = 10
        else
            aumento = 5
        end if

        gasto = gasto + int(sueldo * aumento / 100.0)
        sueldo = int(sueldo * (1 + aumento / 100.0))

        print *, 'El nuevo sueldo es', sueldo
    end do
    print *, 'El gasto adicional de la empresa es', gasto
end program sueldos

