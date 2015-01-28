package com.entidad;
// Generated 27/01/2015 08:56:50 PM by Hibernate Tools 3.6.0


import java.util.HashSet;
import java.util.Set;

/**
 * Estado generated by hbm2java
 */
public class Estado  implements java.io.Serializable {


     private int idEstado;
     private String descripcion;
     private Set<Protocolo> protocolos = new HashSet<Protocolo>(0);

    public Estado() {
    }

	
    public Estado(int idEstado, String descripcion) {
        this.idEstado = idEstado;
        this.descripcion = descripcion;
    }
    public Estado(int idEstado, String descripcion, Set<Protocolo> protocolos) {
       this.idEstado = idEstado;
       this.descripcion = descripcion;
       this.protocolos = protocolos;
    }
   
    public int getIdEstado() {
        return this.idEstado;
    }
    
    public void setIdEstado(int idEstado) {
        this.idEstado = idEstado;
    }
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public Set<Protocolo> getProtocolos() {
        return this.protocolos;
    }
    
    public void setProtocolos(Set<Protocolo> protocolos) {
        this.protocolos = protocolos;
    }




}


