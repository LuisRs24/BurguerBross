package com.cibertec.burguerbross.repository;

import com.cibertec.burguerbross.model.Producto;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface IProductoRepository extends JpaRepository<Producto, Integer> {
    List<Producto> findByIdCategoriaProd(int idCategoriaProd);
}
