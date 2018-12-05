/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package upload;

import conn.Connclass;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Techxplain
 */
@WebServlet(name = "upload", urlPatterns = {"/upload"})
@MultipartConfig
public class upload extends HttpServlet {

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
        PrintWriter writer = response.getWriter();
        try {
            String hj="athaniimage";
           Connclass c=new Connclass(hj);
            String date1="",time1="";
            String h="select now()";
            ResultSet yu=c.select(h);
            try {
                if(yu.next())
                {
                 date1=yu.getDate(1).toString();
                 time1=yu.getTime(1).toString();
                }
            } catch (SQLException ex) {
                Logger.getLogger(upload.class.getName()).log(Level.SEVERE, null, ex);
            }
            String a=date1+"-"+time1.replace(":", "-");
            final Part filePart = request.getPart("img1");
            final String fileName = getFileName(filePart);
            writer.println("ddd");
            writer.println(fileName);
            String fl=fileName.substring(fileName.length()-4,fileName.length());
            OutputStream out = null;
            InputStream filecontent = null;
            String path1=(getServletContext().getRealPath("")
				+ File.separator + "gallery"+File.separator+a+fl);
            File file=new File(path1);
         String originalpath="gallery/"+a+fl;
         out = new FileOutputStream(file);
          filecontent = filePart.getInputStream();
          int read = 0;
        final byte[] bytes = new byte[1024];

        while ((read = filecontent.read(bytes)) != -1) {
            out.write(bytes, 0, read);
        }
            writer.println(path1);
            String q="insert into gallery(image)values('"+originalpath+"')";
            int i=c.insert(q);
            if(i>0)
            {
                 
                response.sendRedirect("image_upload.jsp");
            }
            else
            {
                response.sendRedirect("image_upload.jsp");
            }
        out.close();
    }
        catch (FileNotFoundException fne) {
        writer.println("You either did not specify a file to upload or are "
                + "trying to upload a file to a protected or nonexistent "
                + "location.");
        writer.println("<br/> ERROR: " +request.getContextPath()+"  "+ fne.getMessage());

       
    }
            finally {    
            writer.close();
            
        }
    }
private String getFileName(final Part part) {
    final String partHeader = part.getHeader("content-disposition");
    for (String content :partHeader.split(";")) {
        if (content.trim().startsWith("filename")) {
            String x= content.substring(
            content.indexOf('=') + 1).trim().replace("\"", "");       
            return x;
        }
    }
    return null;
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
