/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlets.registrar;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jonathanespina
 */
@WebServlet(name = "ServletRegistrartUsuario", urlPatterns = {"/ServletRegistrarUsuario"})
public class ServletRegistrarUsuario extends HttpServlet {

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
        
        String nombre = request.getParameter("nombre");
        String pApellido = request.getParameter("pApellido");
        String sApellido = request.getParameter("sApellido");
        String tipo = request.getParameter("tipo");
        String plantel = request.getParameter("plantel");
        String identificador = request.getParameter("identificador");
        String correo = request.getParameter("correo");
        String contrasenia1 = request.getParameter("contrasenia1");
        String contrasenia2 = request.getParameter("contrasenia2");
        String sexo = request.getParameter("sexo");
        int edad = Integer.parseInt(request.getParameter("edad"));
        String telefono = request.getParameter("telefono");
        String movil = request.getParameter("movil");
        String sangre = request.getParameter("sangre");
        
//        if (sangre.compareTo("O-")==0){
//            sangre = "O-";
//        }
//        else{
//            sangre ="o+";
//        }
        
        int status = 1;
        
        
        System.out.println(" "+nombre+" "+pApellido+" "+sApellido+" "+tipo+" "+plantel+" "+identificador+" "+correo+" "+contrasenia1+" "
                + " "+contrasenia2+" "+sexo+" "+edad+" "+telefono+" "+movil+" "+sangre);
        
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
