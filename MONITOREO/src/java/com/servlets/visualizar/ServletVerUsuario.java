/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlets.visualizar;

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
 * @author jonathanespina
 */
@WebServlet(name = "ServletVerUsuario", urlPatterns = {"/ServletVerUsuario"})
public class ServletVerUsuario extends HttpServlet {

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
        
        HttpSession session=request.getSession(true);
        request.setCharacterEncoding("ISO-8859-1");//Línea para que se ingresen de forma correcta los caracteres.
        response.setContentType("text/html;charset=ISO-8859-1");
        PrintWriter out=response.getWriter();
        
        Integer idActive=Integer.parseInt(new String(request.getParameter("idUsuario").getBytes("ISO-8859-1"),"UTF-8"));
        
        ActiveDB activeDB=(ActiveDB)session.getAttribute("activeDB");
        if(activeDB==null){
            activeDB=new ActiveDB();
        }
        
        UsersDB userDB=(UsersDB)session.getAttribute("userDB");
        if(userDB==null){
            userDB=new UsersDB();
        }
        
        Activo active=activeDB.searchActiveId(idActive);
        
        if(active.getTipo().getIdTipo().equals(1)){
            session.setAttribute("activeDB", activeDB);
            out.print(Table.returnSeeInfoAuto(active, userDB));
            session.setAttribute("userDB", userDB);
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
