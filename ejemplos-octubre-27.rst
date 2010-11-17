Ejemplos de la clase del 27 de octubre
======================================

Supermercado
------------
Un supermercado utiliza tablas de datos
para llevar la información de su inventario.

Cada tabla es un arreglo de registros
de los siguientes tipos::

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

El registro ``type(fecha)`` tiene campos
``dia``, ``mes`` y ``anno``.

Cada venta realizada tiene asociada
varios registros de tipo ``item_venta``,
que representan cada uno de los productos distintos vendidos.

Los problemas son los siguientes:

1. Determinar cuál es el producto más caro;
2. Obtener el valor total
   de todos los productos;
3. Obtener los ingresos totales por venta;
4. Determinar cuál es el producto
   que reportó mayores ingresos;
5. Mostrar el nombre del cliente
   que más ha pagado;
6. Pedir al usuario que ingrese un número de boleta,
   y mostrar todos los ítemes vendidos
   en esa compra.
7. Pedir al usuario que ingrese un mes y un año,
   y mostrar los ingresos por ventas de ese mes.
8. Pedir al usuario que ingrese el código de un producto,
   y mostrar la fecha más reciente
   en que el producto fue vendido.

El esqueleto del programa
que inicializa los arreglos
y llama a las funciones que resuelven los problemas
es el siguiente:

.. literalinclude:: programas/supermercado.f95

(Ya pondré las soluciones).

.. include:: disqus.rst

