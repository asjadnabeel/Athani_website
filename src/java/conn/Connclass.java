/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Cabal Technologies
 */
public class Connclass {
    
    Connection con;
   public PreparedStatement ps;
    int s;
    ResultSet rs;
    public Connclass(String j)
    {
        try
        {
//        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
//        con=DriverManager.getConnection("jdbc:odbc:lotterydb","dbcsdbcs","dbcsdbcs");
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3307/"+j+"","root","dbcsdbcs");
        }
        catch(Exception ex)
        {
           ex.printStackTrace();
        }
    }
    public int insert(String query)
    {
        try
        {
        ps=con.prepareStatement(query);
        s=ps.executeUpdate();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        return s;
    }
     public ResultSet select(String query)
    {
        try
        {
        ps=con.prepareStatement(query);
        rs=ps.executeQuery();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        return rs;
    }
    
  
}
