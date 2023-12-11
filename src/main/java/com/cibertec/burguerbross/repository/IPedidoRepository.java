package com.cibertec.burguerbross.repository;

import com.cibertec.burguerbross.model.Pedido;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface IPedidoRepository extends JpaRepository <Pedido,Integer> {
    @Query( value = "SELECT p FROM Pedido p WHERE p.id_pedido = (SELECT MAX(p2.id_pedido) FROM Pedido p2)")
    Pedido findUltimoPedido();
}
