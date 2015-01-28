/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.database;

import com.entidad.Protocolo;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Aiko
 */
public class ProtocoloDB extends ConectDB {

    private int i = 0;
    private Protocolo protocolo = null;
    private List<Protocolo> listaProtocolo = null;

    /**
     * Constructor
     *
     * @param protocolo
     */
    public ProtocoloDB(Protocolo protocolo) {
        this.protocolo = protocolo;
    }

    /**
     * Metodo para guardar protocolo
     *
     * @param protocolo
     * @return
     * @throws HibernateException
     */
    public int saveProtocolo(Protocolo protocolo) throws HibernateException {
        try {
            initOperationWeb();
            i = (int) sessionWeb.save(protocolo);
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
     *  Metodo para modificar protocolo
     * @param protocolo
     * @return
     * @throws HibernateException 
     */
    public int updateProtocolo(Protocolo protocolo) throws HibernateException {
        try {
            initOperationWeb();
            sessionWeb.update(protocolo);
            transactionWeb.commit();
            i = 1;
        } catch (HibernateException ex) {
            catchExceptionWeb(ex);
            throw ex;
        } finally {
            sessionWeb.close();
        }
        return i;
    }

    /**
     *  Metodo para obtener protocolo por id
     * @param id
     * @return
     * @throws HibernateException 
     */
    public Protocolo getProtocolo(int id) throws HibernateException {
        protocolo = new Protocolo();
        try {
            initOperationWeb();
            protocolo = (Protocolo) sessionWeb.createCriteria(Protocolo.class).add(Restrictions.eq("idProtocolo", id)).uniqueResult();
        } catch (HibernateException ex) {
            catchExceptionWeb(ex);
            throw ex;
        } finally {
            sessionWeb.close();
        }
        return protocolo;
    }
}
