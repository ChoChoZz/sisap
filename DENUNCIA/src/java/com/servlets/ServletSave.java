/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlets;

import com.database.PlantelDB;
import com.database.UsuarioDB;
import com.entidad.Plantel;
import com.entidad.Usuario;
import com.entidad.UsuarioId;
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

    private Usuario usuario = null;
    private UsuarioDB usuarioDB = null;

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

        String nombre = new String(request.getParameter("nombre").getBytes("ISO-8859-1"), "UTF-8");
        String materno = new String(request.getParameter("materno").getBytes("ISO-8859-1"), "UTF-8");
        String paterno = new String(request.getParameter("paterno").getBytes("ISO-8859-1"), "UTF-8");
        String tipo = new String(request.getParameter("tipo").getBytes("ISO-8859-1"), "UTF-8");
        String plantel = new String(request.getParameter("plantel").getBytes("ISO-8859-1"), "UTF-8");
        String id = new String(request.getParameter("id").getBytes("ISO-8859-1"), "UTF-8");
        String email = new String(request.getParameter("email").getBytes("ISO-8859-1"), "UTF-8");
        String pass = new String(request.getParameter("pass").getBytes("ISO-8859-1"), "UTF-8");
        String pass1 = new String(request.getParameter("pass1").getBytes("ISO-8859-1"), "UTF-8");
        String sexo = new String(request.getParameter("sexo").getBytes("ISO-8859-1"), "UTF-8");
        String edad = new String(request.getParameter("edad").getBytes("ISO-8859-1"), "UTF-8");
        String telefono = new String(request.getParameter("telefono").getBytes("ISO-8859-1"), "UTF-8");
        String movil = new String(request.getParameter("movil").getBytes("ISO-8859-1"), "UTF-8");
        String tipoSangre = new String(request.getParameter("tipoSangre").getBytes("ISO-8859-1"), "UTF-8");
        System.out.println("plantel----" + plantel);
        int pla = Integer.parseInt(plantel);
        System.out.println("...... " + pla);
        
//        if(pass.equals(pass1)){
            
            PlantelDB pdb = new PlantelDB();
            Plantel p = pdb.getPlantel(1);
            System.out.println("ppp+++" + p);
//            UsuarioId userID = new UsuarioId();
//            userID.setIdUsuario(Integer.parseInt(id));
//            
//            usuarioDB = new UsuarioDB();
//            usuario.setNombre(nombre);
//            usuario.setApPaterno(paterno);
//            usuario.setApMaterno(materno);
//            usuario.setContrasena(pass1);
//            usuario.setEdad(Integer.parseInt(edad));
//            usuario.setPlantel(p);
//            usuario.setMovil(movil);
//            usuario.setTipoSangre(tipoSangre);
//            usuario.setSexo(sexo);
//            usuario.setStatus(true);
//            usuario.setEmail(email);
//            usuario.setId(userID);
//            usuario.setTelefono(telefono);
//            
//            int u = usuarioDB.saveUsuario(usuario);
//            if(u != 0){
//                System.out.println("listuki");
//            }
//        }
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
