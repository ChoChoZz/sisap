package com.entidad;
// Generated 27/01/2015 10:35:24 PM by Hibernate Tools 3.6.0


import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * Plantel generated by hbm2java
 */
@Embeddable
public class Plantel  implements java.io.Serializable {

     @Column(name="idPLANTEL")
     private PlantelId id;
     @Column(name="DIRECCION_idDIRECCION")
     private Direccion direccion;
     @Column(name="nombre")
     private String nombre;
     @Column(name="telefono")
     private String telefono;
     @Column(name="extension")
     private String extension;
     
     private Set usuarios = new HashSet(0);

    public Plantel() {
    }

	
    public Plantel(PlantelId id, Direccion direccion, String nombre, String telefono) {
        this.id = id;
        this.direccion = direccion;
        this.nombre = nombre;
        this.telefono = telefono;
    }
    public Plantel(PlantelId id, Direccion direccion, String nombre, String telefono, String extension, Set usuarios) {
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
    public Set getUsuarios() {
        return this.usuarios;
    }
    
    public void setUsuarios(Set usuarios) {
        this.usuarios = usuarios;
    }




}


