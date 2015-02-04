/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlets;

import com.database.PlantelDB;
import com.entidad.Plantel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Aiko
 */
@WebServlet(name = "ServletSave", urlPatterns = {"/ServletSave"})
public class ServletSave extends HttpServlet {

    private String nombre = "";
    private String direccion = "";
    private String telefono = "";
    private String extension = "";
    private String tipo = "";
    private String coordenadax = "";
    private String coordenaday = "";
    private final Plantel plantel = new Plantel();
    private int idPlantel;

    

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        request.setCharacterEncoding("ISO-8859-1");
        response.setContentType("text/html;charset=ISO-8859-1");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(true);

        this.nombre = new String(request.getParameter("nombre").getBytes("ISO-8859-1"), "UTF-8");
        this.direccion = new String(request.getParameter("direccion").getBytes("ISO-8859-1"), "UTF-8");
        this.telefono = new String(request.getParameter("telefonoFijo").getBytes("ISO-8859-1"), "UTF-8");
        this.extension = new String(request.getParameter("extension").getBytes("ISO-8859-1"), "UTF-8");
        this.coordenadax = new String(request.getParameter("coordenada0").getBytes("ISO-8859-1"), "UTF-8");
        this.coordenaday = new String(request.getParameter("coordenada1").getBytes("ISO-8859-1"), "UTF-8");
        this.tipo = new String(request.getParameter("nivel").getBytes("ISO-8859-1"), "UTF-8");

        
        PlantelDB plantelDB = new PlantelDB();
        
        int i = 0;
     //s   i = plantelDB.savePlantel(plantel);
        if (i != 0) {
            System.out.println("chidoooo");
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
