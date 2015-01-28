package com.entidad;
// Generated 27/01/2015 08:56:50 PM by Hibernate Tools 3.6.0


import java.util.HashSet;
import java.util.Set;

/**
 * Plantel generated by hbm2java
 */
public class Plantel  implements java.io.Serializable {


     private PlantelId id;
     private Direccion direccion;
     private String nombre;
     private String telefono;
     private String extension;
     private Set<Usuario> usuarios = new HashSet<Usuario>(0);

    public Plantel() {
    }

	
    public Plantel(PlantelId id, Direccion direccion, String nombre, String telefono) {
        this.id = id;
        this.direccion = direccion;
        this.nombre = nombre;
        this.telefono = telefono;
    }
    public Plantel(PlantelId id, Direccion direccion, String nombre, String telefono, String extension, Set<Usuario> usuarios) {
       this.id = id;
       this.direccion = direccion;
       this.nombre = nombre;
       this.telefono = telefono;
       this.extension = extension;
       this.usuarios = usuarios;
    }
   
    public PlantelId getId() {
        return this.id;
    }
    
    public void setId(PlantelId id) {
        this.id = id;
    }
    public Direccion getDireccion() {
        return this.direccion;
    }
    
    public void setDireccion(Direccion direccion) {
        this.direccion = direccion;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getTelefono() {
        return this.telefono;
    }
    
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    public String getExtension() {
        return this.extension;
    }
    
    public void setExtension(String extension) {
        this.extension = extension;
    }
    public Set<Usuario> getUsuarios() {
        return this.usuarios;
    }
    
    public void setUsuarios(Set<Usuario> usuarios) {
        this.usuarios = usuarios;
    }




}


