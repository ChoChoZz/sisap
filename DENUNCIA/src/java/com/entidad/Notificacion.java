package com.entidad;
// Generated 27/01/2015 10:35:24 PM by Hibernate Tools 3.6.0


import java.util.HashSet;
import java.util.Set;

/**
 * Notificacion generated by hbm2java
 */
public class Notificacion  implements java.io.Serializable {


     private int idNotificacion;
     private String asunto;
     private String descripcion;
     private Set medioDifusions = new HashSet(0);
     private Set procedimientos = new HashSet(0);

    public Notificacion() {
    }

	
    public Notificacion(int idNotificacion, String asunto, String descripcion) {
        this.idNotificacion = idNotificacion;
        this.asunto = asunto;
        this.descripcion = descripcion;
    }
    public Notificacion(int idNotificacion, String asunto, String descripcion, Set medioDifusions, Set procedimientos) {
       this.idNotificacion = idNotificacion;
       this.asunto = asunto;
       this.descripcion = descripcion;
       this.medioDifusions = medioDifusions;
       this.procedimientos = procedimientos;
    }
   
    public int getIdNotificacion() {
        return this.idNotificacion;
    }
    
    public void setIdNotificacion(int idNotificacion) {
        this.idNotificacion = idNotificacion;
    }
    public String getAsunto() {
        return this.asunto;
    }
    
    public void setAsunto(String asunto) {
        this.asunto = asunto;
    }
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public Set getMedioDifusions() {
        return this.medioDifusions;
    }
    
    public void setMedioDifusions(Set medioDifusions) {
        this.medioDifusions = medioDifusions;
    }
    public Set getProcedimientos() {
        return this.procedimientos;
    }
    
    public void setProcedimientos(Set procedimientos) {
        this.procedimientos = procedimientos;
    }




}


