/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package resource;

/**
 *
 * @author ACER
 */
public class User extends Player{
    
    private String username;
    private String email;
    private String password;
    
    
    public void setUsername(String username)
    {
    this.username=username;
    }
    
     public void setEmail(String email)
    {
    this.email=email;
    }
     
      public void setPassword(String password)
    {
    this.password=password;
    }
      
    public String getUsername()
    {
        return this.username;
    }
    
    public String getEmail()
    {
        return this.email;
    }
    
    public String getPassword()
    {
        return this.password;
    }
    
    
    
    
}



