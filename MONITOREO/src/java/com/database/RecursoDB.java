package com.database;

import com.entidad.Recurso;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Aiko
 */
public class RecursoDB extends ConectDB{ 
    
    private List<Recurso> listRecurso = null;
    private Recurso recurso = new Recurso();
    private int i = 0;

    /**
     * Constructor recive una Recurso
     *
     * @param Recurso
     */
    public RecursoDB(Recurso Recurso) {
        this.recurso = Recurso;
    }

    /**
     * Metodo para guardar Recurso
     * @param recurso
     * @return
     * @throws HibernateException 
     */
    public int saveRecurso(Recurso recurso) throws HibernateException {
        try {
            initOperationWeb();
            i = (int) sessionWeb.save(recurso);
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
     * Metodo para modificar Recurso
     * @param recurso
     * @return
     * @throws HibernateException 
     */
    public int updateRecurso(Recurso recurso) throws HibernateException {
        try {
            initOperationWeb();
            sessionWeb.update(recurso);
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
     * Metodo para obtener lista de Recursos
     * @return
     * @throws HibernateException 
     */
    public List<Recurso> getListaRecursos() throws HibernateException {
        try {
            initOperationWeb();
            listRecurso = sessionWeb.createCriteria(Recurso.class).list();
        } catch (HibernateException ex) {
            catchExceptionWeb(ex);
            throw ex;
        } finally {
            sessionWeb.close();
        }
        return listRecurso;
    }
    

    /**
     * Metodo para obtener Recurso por id
     * @param id
     * @return
     * @throws HibernateException 
     */
    public Recurso getRecursos(int id) throws HibernateException {
        try {
            initOperationWeb();
            recurso = (Recurso) sessionWeb.createCriteria(Recurso.class).add(Restrictions.eq("idRecurso", id)).uniqueResult();
        } catch (HibernateException ex) {
            catchExceptionWeb(ex);
            throw ex;
        } finally {
            sessionWeb.close();
        }
        return recurso;
    }
    
}
