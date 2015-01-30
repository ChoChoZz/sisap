/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.database;

import com.hibernate.HibernateUtil;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Aiko
 */
public class ConectDB {

    protected Session sessionUsers;
    protected Session sessionWeb;
    protected Transaction transactionUsers;
    protected Transaction transactionWeb;

    public void initOperationUsers() throws HibernateException {

        sessionUsers = HibernateUtil.getSessionFactoryUsers().openSession();
        transactionUsers = sessionUsers.beginTransaction();
    }

    public void initOperationWeb() throws HibernateException {

        sessionWeb = HibernateUtil.getSessionFactoryWeb().openSession();
        transactionWeb = sessionWeb.beginTransaction();
    }

    public void catchExceptionUsers(HibernateException he) throws HibernateException {
        transactionUsers.rollback();
        throw new HibernateException("Ocurrió un error en la capa de acceso a datos de usuarios.", he);
    }

    public void catchExceptionWeb(HibernateException he) throws HibernateException {

        transactionWeb.rollback();
        throw new HibernateException("Ocurrió un error en la capa de acceso a datos de sisap.", he);
    }

}
