package com.cibertec.burguerbross.repository;

import com.cibertec.burguerbross.model.DetallePedido;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface IDetallPedidoRepository extends JpaRepository<DetallePedido, Integer> {

    List<DetallePedido> findByIdPedido(int idPedido);


}
