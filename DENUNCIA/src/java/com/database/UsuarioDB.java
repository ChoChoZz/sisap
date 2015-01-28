package com.database;

import com.entidad.Usuario;
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
public class UsuarioDB extends ConectDB{ 
    
    private List<Usuario> listUsuario = null;
    private Usuario usuario = new Usuario();
    private int i = 0;

    /**
     * Constructor recive una Usuario
     *
     * @param Usuario
     */
    public UsuarioDB(Usuario usuario) {
        this.usuario = usuario;
    }

    public UsuarioDB() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    /**
     * Metodo para guardar Usuario
     * @param Usuario
     * @return
     * @throws HibernateException 
     */
    public int saveUsuario(Usuario usuario) throws HibernateException {
        try {
            initOperationWeb();
            i = (int) sessionWeb.save(usuario);
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
     * Metodo para modificar Usuario
     * @param usuario
     * @return
     * @throws HibernateException 
     */
    public int updateUsuario(Usuario usuario) throws HibernateException {
        try {
            initOperationWeb();
            sessionWeb.update(usuario);
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
     * Metodo para obtener lista de Usuarios
     * @return
     * @throws HibernateException 
     */
    public List<Usuario> getListaUsuarios() throws HibernateException {
        try {
            initOperationWeb();
            listUsuario = sessionWeb.createCriteria(Usuario.class).list();
        } catch (HibernateException ex) {
            catchExceptionWeb(ex);
            throw ex;
        } finally {
            sessionWeb.close();
        }
        return listUsuario;
    }
    

    /**
     * Metodo para obtener Usuario por id
     * @param id
     * @return
     * @throws HibernateException 
     */
    public Usuario getUsuarios(int id) throws HibernateException {
        try {
            initOperationWeb();
            usuario = (Usuario) sessionWeb.createCriteria(Usuario.class).add(Restrictions.eq("idUsuario", id)).uniqueResult();
        } catch (HibernateException ex) {
            catchExceptionWeb(ex);
            throw ex;
        } finally {
            sessionWeb.close();
        }
        return usuario;
    }
    
}
