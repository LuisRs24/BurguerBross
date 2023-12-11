package com.cibertec.burguerbross.repository;

import com.cibertec.burguerbross.model.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface IUsuarioRepository extends JpaRepository<Usuario, Integer> {

    @Query("SELECT u FROM Usuario u WHERE u.nombreUsuario = ?1 AND u.password = ?2")
    Usuario findLogin(String nombreUsuario, String password);

}
