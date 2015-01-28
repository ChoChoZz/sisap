package com.entidad;
// Generated 27/01/2015 10:35:24 PM by Hibernate Tools 3.6.0


import java.util.HashSet;
import java.util.Set;

/**
 * MedioDifusion generated by hbm2java
 */
public class MedioDifusion  implements java.io.Serializable {


     private int idMedioDifusion;
     private String descripcion;
     private Set notificacions = new HashSet(0);

    public MedioDifusion() {
    }

	
    public MedioDifusion(int idMedioDifusion, String descripcion) {
        this.idMedioDifusion = idMedioDifusion;
        this.descripcion = descripcion;
    }
    public MedioDifusion(int idMedioDifusion, String descripcion, Set notificacions) {
       this.idMedioDifusion = idMedioDifusion;
       this.descripcion = descripcion;
       this.notificacions = notificacions;
    }
   
    public int getIdMedioDifusion() {
        return this.idMedioDifusion;
    }
    
    public void setIdMedioDifusion(int idMedioDifusion) {
        this.idMedioDifusion = idMedioDifusion;
    }
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public Set getNotificacions() {
        return this.notificacions;
    }
    
    public void setNotificacions(Set notificacions) {
        this.notificacions = notificacions;
    }




}


