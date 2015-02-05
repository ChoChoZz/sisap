/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlets.registrar;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jonathanespina
 */
@WebServlet(name = "ServletRegistrarDenuncia", urlPatterns = {"/ServletRegistrarDenuncia"})
public class ServletRegistrarDenuncia extends HttpServlet {

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
        
        String idUsuario = request.getParameter("denunciante");
        String fechaRegistro = request.getParameter("cuando");
        String horaRegistro = null;//puede ir null
        String fechaFin = null; //puede ir null
        String ubicacion = request.getParameter("plantel"); // esta de mas en la base
        String estado = request.getParameter("estado");//falta en la vista
        int status;//depende en que estado se encuentre
        if(estado.equals("Resuelto")){
            status = 1;
        }
        else{
            status = 0;
        }

        String descripcion = request.getParameter("como");
        String idCLAVE;//puede ir vacia  
        String idARCHIVO;//puede ir vacia
        String idPlantel = request.getParameter("plantel");
        
        
        System.out.println(idUsuario+" "+fechaRegistro+" "+horaRegistro+" "+fechaFin+" "+ubicacion+" "+estado+" "+status+" "+descripcion+" "+idPlantel);
        
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
