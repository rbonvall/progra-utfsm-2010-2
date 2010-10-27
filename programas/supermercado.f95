program supermercado
    implicit none

    type :: fecha
        integer :: dia, mes, anno
    end type fecha

    type :: producto
        integer :: codigo
        character(len=30) :: nombre
        integer :: precio
        integer :: cantidad
    end type producto

    type :: venta
        integer :: numero_boleta
        type(fecha) :: fecha
        character(len=10) :: rut_cliente
    end type venta

    type :: item_venta
        integer :: numero_boleta
        integer :: codigo_producto
        integer :: cantidad
    end type item_venta

    type :: cliente
        character(len=10) :: rut
        character(len=30) :: nombre
    end type cliente

    integer, parameter :: NR_PRODUCTOS = 12
    integer, parameter :: NR_CLIENTES = 3
    integer, parameter :: NR_VENTAS = 5
    integer, parameter :: NR_ITEMES_VENTAS = 9

    type(producto), dimension(NR_PRODUCTOS) :: productos = (/ &
        producto(41419, 'Fideos',        450, 210), &
        producto(70717, 'Cuaderno',      900, 119), &
        producto(78714, 'Jabon',         730, 708), &
        producto(30877, 'Desodorante',  2190,  79), &
        producto(47470, 'Yogur',          99, 832), &
        producto(50809, 'Palta',         500,  55), &
        producto(75466, 'Galletas',      235,   0), &
        producto(33692, 'Bebida',        700,  20), &
        producto(89148, 'Arroz',         900, 121), &
        producto(66194, 'Lapiz',         120, 900), &
        producto(15982, 'Vuvuzela',    12990,  40), &
        producto(41235, 'Chocolate',    3099,  48) /)

    type(cliente), dimension(NR_CLIENTES) :: clientes = (/ &
        cliente('11652624-7', 'Perico Los Palotes'),  &
        cliente( '8830268-0', 'Leonardo Farkas'),     &
        cliente( '7547896-8', 'Fulanita de Tal')     /)

    type(venta), dimension(NR_VENTAS) :: ventas = (/ &
        venta(1, fecha(12,  9, 2010), '8830268-0'),  &
        venta(2, fecha(19,  9, 2010), '11652624-7'), &
        venta(3, fecha(30,  9, 2010), '7547896-8'),  &
        venta(4, fecha( 1, 10, 2010), '8830268-0'),  &
        venta(5, fecha(13, 10, 2010), '7547896-8')  /)

    type(item_venta), dimension(NR_ITEMES_VENTAS) :: itemes = (/ &
        item_venta(1, 89148,  3), &
        item_venta(2, 50809,  4), &
        item_venta(2, 33692,  2), &
        item_venta(2, 47470,  6), &
        item_venta(3, 30877,  1), &
        item_venta(4, 89148,  1), &
        item_venta(4, 75466,  2), &
        item_venta(5, 89148,  2), &
        item_venta(5, 47470, 10) /)

    ! Ejercicios:
    ! 1. obtener producto mas caro
    ! 2. obtener valor total de todos los productos (sumar cantidad * precio)
    ! 3. obtener ingresos totales por ventas
    ! 4. obtener producto con mayores ingresos
    ! 5. mostrar nombre del cliente que mas ha pagado
    ! 6. ingresar numero boleta, imprimir itemes vendidos en esa compra
    ! 7. ingresar mes y anno, mostrar ventas totales del mes
    ! 8. ingresar codigo producto, mostrar ultima fecha en que fue vendido

    type(producto) :: p
    type(cliente) :: c
    type(fecha) :: f
    integer :: mes, anno, cod_prod

    p = producto_mas_caro(productos)
    print *, 'El producto mas caro es ', p % nombre

    print *, 'El valor total de los productos es ', valor_total(productos)

    print *, 'El ingreso total por ventas es ', ingreso_ventas(itemes, productos)

    p = producto_con_mayor_ingreso(productos)
    print *, 'El producto con mas ingresos es ', p % nombre

    c = cliente_que_mas_pago(itemes, productos, clientes)
    print *, 'El cliente que mas pago es ', c % nombre

    print *, 'Ingrese mes y an~o:'
    read *, mes, anno
    print *, 'El total de ventas del mes es ', &
             ingreso_ventas_mes(mes, anno, itemes, productos)

    print *, 'Ingrese codigo producto:'
    read *, cod_prod
    f = fecha_ultima_compra(cod_prod, itemes)
    print *, 'El producto fue vendido por ultima vez el ', f

contains

    ! ...

end program supermercado
