package com.cibertec.burguerbross.repository;

import com.cibertec.burguerbross.model.CategoriaProductos;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ICategoriaProductosRepository  extends JpaRepository<CategoriaProductos, Integer> {
}
