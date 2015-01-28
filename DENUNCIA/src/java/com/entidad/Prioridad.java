package com.entidad;
// Generated 27/01/2015 10:35:24 PM by Hibernate Tools 3.6.0


import java.util.HashSet;
import java.util.Set;

/**
 * Prioridad generated by hbm2java
 */
public class Prioridad  implements java.io.Serializable {


     private int idPrioridad;
     private String descripcion;
     private Set claves = new HashSet(0);

    public Prioridad() {
    }

	
    public Prioridad(int idPrioridad, String descripcion) {
        this.idPrioridad = idPrioridad;
        this.descripcion = descripcion;
    }
    public Prioridad(int idPrioridad, String descripcion, Set claves) {
       this.idPrioridad = idPrioridad;
       this.descripcion = descripcion;
       this.claves = claves;
    }
   
    public int getIdPrioridad() {
        return this.idPrioridad;
    }
    
    public void setIdPrioridad(int idPrioridad) {
        this.idPrioridad = idPrioridad;
    }
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public Set getClaves() {
        return this.claves;
    }
    
    public void setClaves(Set claves) {
        this.claves = claves;
    }




}


