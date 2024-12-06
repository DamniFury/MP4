/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import Classes.FileIO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
        String accName = request.getParameter("username");
        String accPass = request.getParameter("password");
        FileIO io = new FileIO();
        ArrayList<String> users = io.fileReader("C:\\Users\\puaas\\OneDrive\\Documents\\NetBeansProjects\\MP4\\data\\users.txt");
       
        for(int i = 0; i < users.size(); i += 2){
            String username = users.get(i);
            String password = users.get(i+1);
            if(accName.equals(username) && accPass.equals(password)){
                request.getRequestDispatcher("User/home.jsp").forward(request, response); //relative path
            }
            else if(accName.equals(username) && !accPass.equals(password)){
                request.setAttribute("err", "Incorrect Password");
                request.getRequestDispatcher("/Error/error_login.jsp").forward(request, response); //absolute path
            }
            else if(!accName.equals(username) && accPass.equals(password)){
                request.setAttribute("err", "Incorrect Username");
                request.getRequestDispatcher("/Error/error_login.jsp").forward(request, response); //absolute path
            }
            else{
                request.setAttribute("err", "Incorrect Username and Password");
                request.getRequestDispatcher("/Error/error_login.jsp").forward(request, response); //absolute path
            }
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
