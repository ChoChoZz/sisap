/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.database;

import com.entidad.Actividad;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Aiko
 */
public class ActividadDB extends ConectDB {

    private List<Actividad> listAct = null;
    private Actividad actividad = new Actividad();
    private int i = 0;

    /**
     * Constructor recive una actividad
     *
     * @param actividad
     */
    public ActividadDB(Actividad actividad) {
        this.actividad = actividad;
    }

    /**
     * Metodo para guardar actividad
     * @param actividad
     * @return
     * @throws HibernateException 
     */
    public int saveActividad(Actividad actividad) throws HibernateException {
        try {
            initOperationWeb();
            i = (int) sessionWeb.save(actividad);
            transactionWeb.commit();
        } catch (HibernateException ex) {
            catchExceptionWeb(ex);
            throw ex;
        } finally {
            sessionWeb.close();
        }
        return i;
    }

    /**
     * Metodo para modificar actividad
     * @param actividad
     * @return
     * @throws HibernateException 
     */
    public int updateActividad(Actividad actividad) throws HibernateException {
        try {
            initOperationWeb();
            sessionWeb.update(actividad);
            i = 1;
            transactionWeb.commit();
        } catch (HibernateException ex) {
            catchExceptionWeb(ex);
            throw ex;
        } finally {
            sessionWeb.close();
        }
        return i;
    }

    /**
     * Metodo para obtener lista de actividades
     * @return
     * @throws HibernateException 
     */
    public List<Actividad> getListaActividades() throws HibernateException {
        try {
            initOperationWeb();
            listAct = sessionWeb.createCriteria(Actividad.class).list();
        } catch (HibernateException ex) {
            catchExceptionWeb(ex);
            throw ex;
        } finally {
            sessionWeb.close();
        }
        return listAct;
    }
    

    /**
     * Metodo para obtener actividad por id
     * @param id
     * @return
     * @throws HibernateException 
     */
    public Actividad getActividades(int id) throws HibernateException {
        try {
            initOperationWeb();
            actividad = (Actividad) sessionWeb.createCriteria(Actividad.class).add(Restrictions.eq("idActividad", id)).uniqueResult();
        } catch (HibernateException ex) {
            catchExceptionWeb(ex);
            throw ex;
        } finally {
            sessionWeb.close();
        }
        return actividad;
    }
    
}
