/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.database;

import com.entidad.Usuario;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Aiko
 */
public class UsuariosDB extends ConectDB {

    private Usuario usuario = new Usuario();
    private List<Usuario> users = null;
    private int i = 0;

    public UsuariosDB(Usuario usuario) {
        this.usuario = usuario;
    }

    /**
     * Metodo para guardar un usuario
     * @param usuario
     * @return
     * @throws HibernateException 
     */
    public int saveUsuario(Usuario usuario) throws HibernateException {
        try {
            initOperationUsers();
            i = (int) sessionUsers.save(usuario);
            transactionUsers.commit();
        } catch (HibernateException ex) {
            catchExceptionWeb(ex);
            throw ex;
        } finally {
            sessionWeb.close();
        }
        return i;
    }

    /**
     * Metodo para modificar un usuario
     * @param usuario
     * @return
     * @throws HibernateException 
     */
    public int updateUsuario(Usuario usuario) throws HibernateException {

        try {
            initOperationUsers();
            i = 1;
            sessionUsers.update(usuario);
            transactionUsers.commit();
        } catch (HibernateException ex) {
            catchExceptionWeb(ex);
            throw ex;
        } finally {
            sessionWeb.close();
        }
        return i;
    }

    /**
     * Metodo para obtener lista de usuarios
     * @return
     * @throws HibernateException 
     */
    public List<Usuario> getLista() throws HibernateException {
        try {
            initOperationUsers();
            users = sessionUsers.createCriteria(Usuario.class).list();
        } catch (HibernateException ex) {
            catchExceptionWeb(ex);
            throw ex;
        } finally {
            sessionWeb.close();
        }
        return users;
    }

    /**
     * Metodo para obtener un usuario por su id
     * @param id
     * @return
     * @throws HibernateException 
     */
    public Usuario getUsuario(int id) throws HibernateException {
        try {
            initOperationUsers();
            usuario = (Usuario) sessionUsers.createCriteria(Usuario.class).add(Restrictions.eq("idUsuario", id)).uniqueResult();
        } catch (HibernateException ex) {
            catchExceptionWeb(ex);
            throw ex;
        } finally {
            sessionWeb.close();
        }
        return usuario;
    }

}
