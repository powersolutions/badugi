/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package resource;
import java.util.ArrayList;
/**
 *
 * @author lenovo
 */
public class Player {
    private String playerType;
    protected BadugiHand BadugiHand;
    
    public void setHand(BadugiHand BadugiHand) {
        this.BadugiHand = BadugiHand;
    }
    
    public BadugiHand getHand() {
        if (this.BadugiHand == null) {
            this.BadugiHand = new BadugiHand();
        }
        return this.BadugiHand;
    }   
    
    public void setPlayerType(String playerType) {
        this.playerType = playerType;
    }
    
    public String getPlayerType() {
        return this.playerType;
    }
    
     public String[] showHand()
   {
       
       BadugiHand h= this.getHand();
       
       
       String[] cardNames= new String[h.getHand().size()];
       ArrayList<Card> c = h.getHand();
       
       
       
       for(int i=0;i<h.getHand().size();i++)
       {
           cardNames[i]= c.get(i).getId();
           System.out.println(cardNames[i]);
       }
       
       return cardNames;
   }
}
