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
}
