/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hibernate;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 * Hibernate Utility class with a convenient method to get Session Factory
 * object.
 *
 * @author Aiko
 */
public class HibernateUtil {

   
    private static final SessionFactory sessionFactoryUsers;
    private static final SessionFactory sessionFactoryWeb;
    
    static {
        try {
            // Create the SessionFactory from standard (hibernate.cfg.xml) 
            // config file.
            sessionFactoryUsers = new Configuration().configure("usuarios.cfg.xml").buildSessionFactory();
            sessionFactoryWeb = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
        } catch (HibernateException ex) {
            // Log the exception. 
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
    
    public static SessionFactory getSessionFactoryUsers() {
        return sessionFactoryUsers;
    }
    
    public static SessionFactory getSessionFactoryWeb() {
        return sessionFactoryWeb;
    }
}
