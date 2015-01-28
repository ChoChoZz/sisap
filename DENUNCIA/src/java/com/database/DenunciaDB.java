/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.database;

import com.entidad.Denuncia;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Aiko
 */
public class DenunciaDB extends ConectDB {

    private Denuncia denuncia = new Denuncia();
    private List<Denuncia> denuncias = null;
    private int i = 0;

    public DenunciaDB(Denuncia denuncia) {
        this.denuncia = denuncia;
    }

    /**
     * Metodo para guardar una denuncia
     * @param denuncia
     * @return
     * @throws HibernateException 
     */
    public int saveDenuncia(Denuncia denuncia) throws HibernateException {
        try {
            initOperationWeb();
            i = (int) sessionWeb.save(denuncia);
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
     * Metodo para modificar una denuncia
     * @param denuncia
     * @return
     * @throws HibernateException 
     */
    public int updateDenuncia(Denuncia denuncia) throws HibernateException {
        try {
            initOperationWeb();
            i = 1;
            sessionWeb.update(denuncia);
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
     * Metodo para obtener lista de denuncias
     * @return
     * @throws HibernateException 
     */
    public List<Denuncia> getLista() throws HibernateException {
        try {
            initOperationWeb();
            denuncias = sessionWeb.createCriteria(Denuncia.class).list();
        } catch (HibernateException ex) {
            catchExceptionWeb(ex);
            throw ex;
        } finally {
            sessionWeb.close();
        }
        return denuncias;
    }

    /**
     * Metodo para obtener una denuncia por su id
     * @param id
     * @return
     * @throws HibernateException 
     */
    public Denuncia getDenuncia(int id) throws HibernateException {
        try {
            initOperationWeb();
            denuncia = (Denuncia) sessionWeb.createCriteria(Denuncia.class).add(Restrictions.eq("idDenuncia", id)).uniqueResult();
        } catch (HibernateException ex) {
            catchExceptionWeb(ex);
            throw ex;
        } finally {
            sessionWeb.close();
        }
        return denuncia;
    }

}
