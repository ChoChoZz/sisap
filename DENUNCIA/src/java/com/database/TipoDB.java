package com.database;

import com.entidad.Tipo;
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
public class TipoDB extends ConectDB{ 
    
    private List<Tipo> listTipo = null;
    private Tipo tipo = new Tipo();
    private int i = 0;

    /**
     * Constructor recive una Tipo
     *
     * @param tipo
     */
    public TipoDB(Tipo tipo) {
        this.tipo = tipo;
    }

    /**
     * Metodo para guardar Tipo
     * @param tipo
     * @return
     * @throws HibernateException 
     */
    public int saveTipo(Tipo tipo) throws HibernateException {
        try {
            initOperationWeb();
            i = (int) sessionWeb.save(tipo);
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
     * Metodo para modificar Tipo
     * @param tipo
     * @return
     * @throws HibernateException 
     */
    public int updateTipo(Tipo tipo) throws HibernateException {
        try {
            initOperationWeb();
            sessionWeb.update(tipo);
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
     * Metodo para obtener lista de Tipos
     * @return
     * @throws HibernateException 
     */
    public List<Tipo> getListaTipos() throws HibernateException {
        try {
            initOperationWeb();
            listTipo = sessionWeb.createCriteria(Tipo.class).list();
        } catch (HibernateException ex) {
            catchExceptionWeb(ex);
            throw ex;
        } finally {
            sessionWeb.close();
        }
        return listTipo;
    }
    

    /**
     * Metodo para obtener Tipo por id
     * @param id
     * @return
     * @throws HibernateException 
     */
    public Tipo getTipos(int id) throws HibernateException {
        try {
            initOperationWeb();
            tipo = (Tipo) sessionWeb.createCriteria(Tipo.class).add(Restrictions.eq("idTipo", id)).uniqueResult();
        } catch (HibernateException ex) {
            catchExceptionWeb(ex);
            throw ex;
        } finally {
            sessionWeb.close();
        }
        return tipo;
    }
    
}
