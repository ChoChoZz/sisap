package com.database;

import com.entidad.Archivo;
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
public class ArchivoDB extends ConectDB{ 
    
    private List<Archivo> listArchivo = null;
    private Archivo archivo = new Archivo();
    private int i = 0;

    /**
     * Constructor recive una Archivo
     *
     * @param archivo
     */
    public ArchivoDB(Archivo archivo) {
        this.archivo = archivo;
    }

    /**
     * Metodo para guardar archivo
     * @param archivo
     * @return
     * @throws HibernateException 
     */
    public int saveArchivo(Archivo archivo) throws HibernateException {
        try {
            initOperationWeb();
            i = (int) sessionWeb.save(archivo);
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
     * Metodo para modificar archivo
     * @param archivo
     * @return
     * @throws HibernateException 
     */
    public int updateArchivo(Archivo archivo) throws HibernateException {
        try {
            initOperationWeb();
            sessionWeb.update(archivo);
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
     * Metodo para obtener lista de Archivos
     * @return
     * @throws HibernateException 
     */
    public List<Archivo> getListaArchivos() throws HibernateException {
        try {
            initOperationWeb();
            listArchivo = sessionWeb.createCriteria(Archivo.class).list();
        } catch (HibernateException ex) {
            catchExceptionWeb(ex);
            throw ex;
        } finally {
            sessionWeb.close();
        }
        return listArchivo;
    }
    

    /**
     * Metodo para obtener Archivo por id
     * @param id
     * @return
     * @throws HibernateException 
     */
    public Archivo getArchivos(int id) throws HibernateException {
        try {
            initOperationWeb();
            archivo = (Archivo) sessionWeb.createCriteria(Archivo.class).add(Restrictions.eq("idArchivo", id)).uniqueResult();
        } catch (HibernateException ex) {
            catchExceptionWeb(ex);
            throw ex;
        } finally {
            sessionWeb.close();
        }
        return archivo;
    }
    
}
