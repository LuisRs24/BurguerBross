package com.cibertec.burguerbross.model;


import jakarta.persistence.*;

@Entity
@Table(name = "tb_roles")
public class Rol {

    @Id
    @Column(name = "id_rol")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_rol;
    @Column(name = "nombre_rol")
    private String nombre_rol;

    public int getId_rol() {
        return id_rol;
    }

    public void setId_rol(int id_rol) {
        this.id_rol = id_rol;
    }

    public String getNombre_rol() {
        return nombre_rol;
    }

    public void setNombre_rol(String nombre_rol) {
        this.nombre_rol = nombre_rol;
    }
}
