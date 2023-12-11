package com.cibertec.burguerbross.model;

import jakarta.persistence.*;

import java.math.BigDecimal;

@Entity
@Table(name="tb_detalle_pedido")
public class DetallePedido {

    @Id
    @Column(name = "id_detalle_pedido")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_detalle_pedido;

    @Column(name = "id_pedido")
    private int idPedido;

    @Column(name = "id_producto")
    private int idProducto;

    @Column(name = "precio_producto")
    private BigDecimal precio_producto;

    @Column(name = "cantidad")
    private int cantidad;

    @Column(name = "subtotal")
    private BigDecimal subtotal;


    public int getId_detalle_pedido() {
        return id_detalle_pedido;
    }

    public void setId_detalle_pedido(int id_detalle_pedido) {
        this.id_detalle_pedido = id_detalle_pedido;
    }

    public int getIdPedido() {
        return idPedido;
    }

    public void setIdPedido(int idPedido) {
        this.idPedido = idPedido;
    }

    public int getId_producto() {
        return idProducto;
    }

    public void setId_producto(int idProducto) {
        this.idProducto = idProducto;
    }

    public BigDecimal getPrecio_producto() {
        return precio_producto;
    }

    public void setPrecio_producto(BigDecimal precio_producto) {
        this.precio_producto = precio_producto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public BigDecimal getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(BigDecimal subtotal) {
        this.subtotal = subtotal;
    }
}
