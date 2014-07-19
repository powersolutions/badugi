/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package resource;
import java.util.ArrayList;
import businessLogic.*;

/**
 *
 * @author lenovo
 */
public class BadugiHand implements Hand {
    private ArrayList<Card> cards;
    private CardsService cardsService;
    
    
    public void setCardsService(CardsService cardsService) {
        this.cardsService = new CardsService();
    }
    
    public CardsService getCardsService() {
        if (this.cardsService == null) {
            this.cardsService = new CardsService();
        }
        return this.cardsService;
    }
    public void setHand(ArrayList<Card> cards) {
        this.cards = cards;
    }
    
    public ArrayList<Card> getHand() {
        
        return this.cards;
    }
    
    public String calculateBadugi() {
        //setting the initial name
        int minimumWeight = this.cards.get(0).getCardValue().getWeight();
        String name = this.cards.get(0).getCardValue().getName();
        for (Card c : this.cards) {
            if (minimumWeight > c.getCardValue().getWeight()) {
                minimumWeight = c.getCardValue().getWeight();
                name = c.getCardValue().getName();
            }
        }
        //setting Badugi type
        ArrayList<String> uniqueSuites = new ArrayList();
        
        for (Card c : this.cards) {
            if (!uniqueSuites.contains(c.getCardValue().getName())) {
                uniqueSuites.add(c.getCardValue().getName());
            }
        }
        int NumberOfUniqueCards = uniqueSuites.size();
        String type = "";
        switch (NumberOfUniqueCards) {
            case 1:
                type = "- One Hand";
                break;
            case 2:
                type = "- Two Hand";
                break;
            case 3:
                type = "- Three Hand";
                break;
            case 4:
                type = "- Badugi Hand";
                break;
            default:
                type = "- Invalid Hand";
                break;
        }
        
        return name + type;
    }
    
    public int getMaxWeight() {
        return this.getCardsService().getMaxWeight();
    }
    
}
