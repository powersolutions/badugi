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
public class Hand {
    private ArrayList<Card> hand;
    
    
    public void setHand(ArrayList<Card> hand) {
        this.hand = hand;
    }
    
    public ArrayList<Card> getHand() {
        
        return this.hand;
    }
    
    
    
}
