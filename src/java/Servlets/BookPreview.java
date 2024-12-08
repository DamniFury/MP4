/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import Classes.FileIO;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author puaas
 */
public class BookPreview extends HttpServlet {

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
        String bookNum = request.getParameter("bookNum");
        String user = request.getParameter("userName");
        String bookTitle, author;
        String relativePath = "../../data/records.txt";
        String absolutePath = getServletContext().getRealPath(relativePath);
        FileIO io = new FileIO();
        ArrayList<String> contents = new ArrayList<>();
        contents.add(bookNum);
        
        switch(bookNum){
            case "1": { 
                bookTitle = "The Song of Achilles"; 
                author = "Madeline Miller";
                break;
            }
            case "2": {
                bookTitle = "A Little Life";
                author = "Hanya Yanagihara";
                break;
            }
            case "3": { 
                bookTitle = "Tomorrow and Tomorrow and Tomorrow";
                author = "Gabrielle Zevin";
                break;
            }
            case "4": { 
                bookTitle = "They Both Die At The End";
                author = "Adam Silvera";
                break;
            }
            case "5": { 
                bookTitle = "Frankenstein";
                author = "Mary Shelley";
                break;
            }
            case "6": { 
                bookTitle = "Little Women";
                author = "Louisa May Alcott";
                break;
            }
            case "7": { 
                bookTitle = "People We Meet on Vacation";
                author = "Emily Henry";
                break;
            }
            case "8": { 
                bookTitle = "Happy Place";
                author = "Emily Henry";
                break;
            }
            case "9": { 
                bookTitle = "Circe";
                author = "Madeline Miller";
                break;
            }
            case "10": { 
                bookTitle = "Aristotle and Dante Discover The Secrets of The Universe";
                author = "Benjamin Alire Sáenz";
                break;
            }
            case "11": { 
                bookTitle = "Aristotle and Dante Dive Into The Waters of The World";
                author = "Benjamin Alire Sáenz";
                break;
            }
            case "12": { 
                bookTitle = "A Thousand Ships";
                author = "Natalie Haynes";
                break;
            }
            case "13": { 
                bookTitle = "Red White & Royal Blue";
                author = "Casey McQuiston";
                break;
            }
            case "14": { 
                bookTitle = "Instructions For Dancing";
                author = "Nicola Yoon";
                break;
            }
            default: {
                bookTitle = "N/A";
                author = "N/A";
                break;
            }
        }
        
        SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
        Calendar calendar = Calendar.getInstance(); 
        String initialPeriod = dateFormat.format(calendar.getTime());
        calendar.add(Calendar.DAY_OF_MONTH, 7);
	String borrowPeriod = initialPeriod + " - " + dateFormat.format(calendar.getTime()); 
        
        contents.add(bookTitle);
        contents.add(author);
        contents.add(user);
        contents.add(borrowPeriod);
        contents.add("N/A");
        contents.add("Ongoing");
        io.fileWriter(contents, absolutePath);
        response.sendRedirect("User/home.jsp");
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
