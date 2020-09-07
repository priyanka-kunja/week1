/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.MongoCredential;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.bson.Document;

/**
 *
 * @author User
 */
@WebServlet(urlPatterns = {"/User"})
public class User extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
            DB db = mongoClient.getDB( "cms_database" );
            DBCollection coll = db.getCollection("course_info");
            BasicDBObject allQuery = new BasicDBObject();
            BasicDBObject fields = new BasicDBObject();
            fields.put("course_code", 1);
            fields.put("course_name",1);
            fields.put("course_instructor",1);
            fields.put("video_link",1);
            fields.put("pdf_link",1);
            fields.put("s_no",1);
            fields.put("_id", 0);
            DBCursor cursor = coll.find(allQuery, fields);
            DBObject object;
            int i=1;
            out.print("<table style='width:100%'>");
            out.print("<tr><th>S_no</th><th>course_code</th><th>course_name</th><th>course_instructor</th><th>Video Download</th><th>PDF Download</th></tr>");
	while (cursor.hasNext()) {
		/*out.print(cursor.next().get("course_name"));*/
                object=cursor.next();
                out.print("<tr>");
                out.print("<td>"+i+"</td>");
                out.print("<td>"+object.get("course_code")+"</td>");
                out.print("<td>"+object.get("course_name")+"</td>");
                out.print("<td>"+object.get("course_instructor")+"</td>");
                out.print("<td><a href='"+object.get("video_link")+"'>Download</a></td>");
                out.print("<td><a href='"+object.get("pdf_link")+"'>Download</a></td>");
                out.print("</tr>");
                i++;
	}
        out.print("</table>");
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
