/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import Classes.FileIO;
import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author puaas
 */
public class LogInServlet extends HttpServlet {

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
        response.setHeader("Cache-Control", "no-store");
        HttpSession session = request.getSession();
        String accName = request.getParameter("username").trim();
        String accPass = request.getParameter("password").trim();
        
        String relativePath = "../../data/users.txt";
        String absolutePath = getServletContext().getRealPath(relativePath);
        
        session.setAttribute("username", accName);
        
        FileIO io = new FileIO();
        HashMap<String, String> credentials = io.fileReader(absolutePath);
        credentials.put(getServletConfig().getInitParameter("name"), getServletConfig().getInitParameter("password"));
        
        if(credentials.containsKey(accName) && credentials.get(accName).equals(accPass)){
            if(accName.equals(getServletConfig().getInitParameter("name"))){
                request.getRequestDispatcher("Librarian/dashboard.jsp").forward(request, response);
            }
            request.getRequestDispatcher("User/home.jsp").forward(request, response);
        }
        if(!credentials.containsKey(accName)){
            request.setAttribute("err", "Incorrect Username");
            request.getRequestDispatcher("/Error/error_login.jsp").forward(request, response);
        }
        if(!credentials.get(accName).equals(accPass)){
            request.setAttribute("err", "Incorrect Password");
            request.getRequestDispatcher("/Error/error_login.jsp").forward(request, response);
        }
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
