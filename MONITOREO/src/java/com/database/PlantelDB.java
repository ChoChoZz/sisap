/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.database;

import com.entidad.Plantel;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Aiko
 */
public class PlantelDB extends ConectDB {

    /**
     * Variables globales
     */
    private Plantel plantel = null;
    private int i = 0;
    private List<Plantel> listPlantel = null;

    public PlantelDB() {
        
    }

    
    /**
     * Constructor
     *
     * @param plantel
     */
 
    /**
     * Metodo para guardar un plantel
     * @param plantel
     * @return
     * @throws HibernateException 
     */
    public int savePlantel(Plantel plantel) throws HibernateException {
        try {
            initOperationWeb();
            i = (int) sessionWeb.save(plantel);
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
     * Metodo para modificar plantel
     * @param plantel
     * @return
     * @throws HibernateException 
     */
    public int updatePlantel(Plantel plantel) throws HibernateException {
        try {
            initOperationWeb();
            sessionWeb.update(plantel);
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
     * Metodo para obtener plantel por id
     * @param id
     * @return
     * @throws HibernateException 
     */
    public Plantel getPlantel(int id) throws HibernateException {
        plantel = new Plantel();

        try {
            initOperationWeb();
            plantel = (Plantel) sessionWeb.createCriteria(Plantel.class).add(Restrictions.eq("idPlantel", id)).uniqueResult();
        } catch (HibernateException ex) {
            catchExceptionWeb(ex);
            throw ex;
        } finally {
            sessionWeb.close();
        }
        return plantel;
    }

    /**
     * Metodo para obtener lista de planteles
     * @return
     * @throws HibernateException 
     */
    public List<Plantel> getListaPlantel() throws HibernateException {
        try {
            initOperationWeb();
            listPlantel = sessionWeb.createCriteria(Plantel.class).list();
        } catch (HibernateException ex) {
            catchExceptionWeb(ex);
            throw ex;
        } finally {
            sessionWeb.close();
        }
        return listPlantel;
    }
}
