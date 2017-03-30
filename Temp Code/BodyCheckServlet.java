/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author crandol5
 */
@WebServlet(name = "BodyCheckServlet", urlPatterns = {"/BodyCheckServlet"})
public class BodyCheckServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession session;
        User user;

        String canvasData;
        String sigData;
        String firstName;
        String lastName;
        String what;
        String where;
        String when;
        String why;
        String firstAid;
        String recommend;
        
        canvasData = request.getParameter("canvasData");
        sigData = request.getParameter("sigData");
        firstName = request.getParameter("firstName");
        lastName = request.getParameter("lastName");
        what = request.getParameter("what");
        where = request.getParameter("where");
        when = request.getParameter("when");
        why = request.getParameter("why");
        firstAid = request.getParameter("firstAid");
        recommend = request.getParameter("recommend");
        
        DFNDocument doc = new DFNDocument("newFile.dfn", DFNDocument.BODY_CHECK);
        doc.setParameter("CANVASURI", "canvasData");
        doc.setParameter("SIGURI", "sigData");
        doc.setParameter("FIRSTNAME", "firstName");
        doc.setParameter("LASTNAME", "lastName");
        doc.setParameter("WHAT", "what");
        doc.setParameter("WHERE", "where");
        doc.setParameter("WHEN", "when");
        doc.setParameter("WHY", "why");
        doc.setParameter("FIRSTAID", "firstAid");
        doc.setParameter("RECOMMEND", "recommend");
        doc.write();

        try {
            session = request.getSession();
            user = (User)session.getAttribute("user");
        }

        catch (Exception ex) {
            ex.printStackTrace();
        }

        Calendar cal = new Calendar();

        Forms form = new Form();
        form.insert(new Object[] {"FID000000014", user.getUserID(), request.getParameter("patId"), "BODY_CHECK", doc.getFile(), cal.get(Calendar.YEAR) + "-" + cal.get(Calendar.MONTH) + "-" + cal.get(Calendar.DATE), "1"});

        user.finalize();
        doc.finalize();
        form.finalize();
        cal.finalize();
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
        dispatcher.forward(request, response);
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
