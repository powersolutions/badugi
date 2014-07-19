/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package resource;

/**
 *
 * @author lenovo
 */
public class Player {
    private String playerType;
    private Hand hand;
    
    public void setHand(Hand hand) {
        this.hand = hand;
    }
    
    public Hand getHand() {
        if (this.hand == null) {
            this.hand = new BadugiHand();
        }
        return this.hand;
    }   
    
    public void setPlayerType(String playerType) {
        this.playerType = playerType;
    }
    
    public String getPlayerType() {
        return this.playerType;
    }
}
