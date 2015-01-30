/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.database;

import com.entidad.Notificacion;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Aiko
 */
public class NotificacionDB extends ConectDB {

    private Notificacion notificacion = null;
    private int i = 0;
    private List<Notificacion> listNotif = null;

    /**
     * Constructor
     *
     * @param notificacion
     */
    public NotificacionDB(Notificacion notificacion) {
        this.notificacion = notificacion;
    }

    /**
     * Metodo para guardar notificacion
     *
     * @param notificacion
     * @return
     * @throws HibernateException
     */
    public int saveNotificacion(Notificacion notificacion) throws HibernateException {
        try {
            initOperationWeb();
            i = (int) sessionUsers.save(notificacion);
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
     * Metodo para modificar una notificacion
     *
     * @param notificacion
     * @return
     * @throws HibernateException
     */
    public int updateNotificacion(Notificacion notificacion) throws HibernateException {
        try {
            initOperationWeb();
            i = 1;
            sessionWeb.update(notificacion);
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
     * Metodo para obtener una notificacion por su id
     *
     * @param id
     * @return
     * @throws HibernateException
     */
    public Notificacion getNotificacion(int id) throws HibernateException {
        try {
            notificacion = new Notificacion();
            initOperationWeb();
            notificacion = (Notificacion) sessionWeb.createCriteria(Notificacion.class).add(Restrictions.eq("idNotificacion", id)).uniqueResult();
        } catch (HibernateException ex) {
            catchExceptionWeb(ex);
            throw ex;
        } finally {
            sessionWeb.close();
        }
        return notificacion;
    }

    /**
     * Metodo para obtener lista de notificaciones
     *
     * @return
     * @throws HibernateException
     */
    public List<Notificacion> getListaNotificacion() throws HibernateException {
        try {
            initOperationWeb();
            listNotif = sessionWeb.createCriteria(Notificacion.class).list();
        } catch (HibernateException ex) {
            catchExceptionWeb(ex);
            throw ex;
        } finally {
            sessionWeb.close();
        }
        return listNotif;
    }
}
