/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dataAccess;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.*;
import java.util.ArrayList;
import resource.*;

/**
 *
 * @author ACER
 */
public class UserDataAcces {
      protected Connection con;
      protected Statement stmt;
      
       public Connection getConnection() {
        return this.con;
    }
    
    public Statement getStatement() {
        
        
        
        return this.stmt;
    }
    
       public void registerUser(User user) {
           
          //  PreparedStatement pstmt=null;
        try{
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	    this.con = DriverManager.getConnection("jdbc:odbc:PokerDSN");
	    this.stmt = this.con.createStatement();
            
            
                
	    String query = "insert into Players "+"values("+"'"+user.getUsername()+"','"+user.getEmail()+"','"+user.getPassword()+"')";

          //  String query = "insert into Players "+"values('ss','@','aa')";
//            String query = "insert into Players "+"values(?,?,?)";
//             pstmt = this.con.prepareStatement(query);
//            
//            pstmt.setString(1, user.getUsername());
//            pstmt.setString(2, user.getEmail());
//            pstmt.setString(3, user.getPassword());
            
            stmt.executeUpdate(query);
            
            stmt.close();
            this.con.close();
            
            
	} catch (Exception e) {
            //handle exception
        } finally {
           
        } 
       }
       
      public int checkCredentials(User user)   
      {
          int isCorrect=0;
          
        try{
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	    this.con = DriverManager.getConnection("jdbc:odbc:PokerDSN");
	    this.stmt = this.con.createStatement();
            
                
	    String query = "select 1 from Players "+"where email="+"'"+user.getEmail()+"'"+" and password="+"'"+user.getPassword()+"'";
	    //String query = "select 1 from Players "+"where email='sharfanfq@gmail.com' and password='123'";
            
            ResultSet rs = this.stmt.executeQuery(query);
            if(rs.next())
            { 
             isCorrect=rs.getInt(1);
            }
            this.stmt.close();
            this.con.close();
            
            
	} catch (Exception e) {
            //handle exception
        } finally {
           return isCorrect;
        } 
       }
}
