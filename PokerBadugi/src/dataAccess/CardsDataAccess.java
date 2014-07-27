/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dataAccess;

import java.util.ArrayList;
import resource.*;
import java.sql.*;
/**
 *
 * @author lenovo
 */
public class CardsDataAccess {
    protected Connection con;
    protected Statement stmt;
    private ArrayList<Suite> suites;
    private ArrayList<CardValue> cardValues;
    private String value;
    
    public Connection getConnection() {
        return this.con;
    }
    
    public Statement getStatement() {
        return this.stmt;
    }
    
    public ArrayList<Suite> getSuites() {
        try{
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	    this.con = DriverManager.getConnection("jdbc:odbc:PokerDSN");
	    this.stmt = this.con.createStatement();
	    String query = "select * from suite";
	    ResultSet rs = this.stmt.executeQuery(query);
            this.suites = new ArrayList();
            while(rs.next()){
                Suite suite = new Suite();
                suite.setName(rs.getString(2));
		suite.setColor(rs.getString(3));
                this.suites.add(suite);
            }
            this.stmt.close();
            this.con.close();
            
            
	} catch (Exception e) {
            //handle exception
        } finally {
            return this.suites;
        } 
    }
    
    public ArrayList<CardValue> getCardValues() {
        try{
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	    this.con = DriverManager.getConnection("jdbc:odbc:PokerDSN");
	    this.stmt = this.con.createStatement();
	    String query = "select * from card_value";
	    ResultSet rs = this.stmt.executeQuery(query);
            this.cardValues = new ArrayList();
            while(rs.next()){
                CardValue cardValue = new CardValue();
                cardValue.setName(rs.getString(2));
		cardValue.setWeight(rs.getInt(3));
                this.cardValues.add(cardValue);
            }
            this.stmt.close();
            this.con.close();
            
            
	} catch (Exception e) {
            //handle exception
        } finally {
            return this.cardValues;
        } 
    }
    
    public String getConfiguredValue(String key) {
       // System.out.println("aaaa");
        try{
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	    this.con = DriverManager.getConnection("jdbc:odbc:PokerDSN");
	    this.stmt = this.con.createStatement();
	    String query = "select config_value from poker_config where config_key ="+"'"+key+"'";
            //=" exec sp_GetMPF '"+mno+"','"+format+"'";
	    ResultSet rs = this.stmt.executeQuery(query);
            this.cardValues = new ArrayList();
            while(rs.next()){
                this.value = rs.getString(0);
                System.out.println(rs.getString(0));
            } 
            this.stmt.close();
            this.con.close();
            
            
	} catch (Exception e) {
           // System.out.println(e.toString());
        } finally {
            return this.value;
        } 
    }
    
}
