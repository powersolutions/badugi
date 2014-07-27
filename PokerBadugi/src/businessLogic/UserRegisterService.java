/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package businessLogic;

import dataAccess.UserDataAcces;
import resource.*;
import java.util.ArrayList;
/**
 *
 * @author ACER
 */
public class UserRegisterService {
    
   private UserDataAcces UserDataAcces;
   
     public UserDataAcces getUserDataAcces() {
        if (this.UserDataAcces == null) {
            this.UserDataAcces = new UserDataAcces();
        }
        return this.UserDataAcces;
    }
    
    public void setUserDataAcces(UserDataAcces UserDataAcces) {
        this.UserDataAcces = UserDataAcces;
    }
    
    
    public void registerUser(User user)
    {
      this.getUserDataAcces().registerUser(user);
    }
    
     public int checkCredentials(User user)
    {
      return this.getUserDataAcces().checkCredentials(user);
    }
}
