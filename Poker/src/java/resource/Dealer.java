/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package resource;

/**
 *
 * @author lenovo
 */
public class Dealer {
    protected CardPack cardPack;
    
    public void setCardPack(CardPack cardPack) {
        this.cardPack = cardPack;
    }
    
    public CardPack getCardPack() {
        if (this.cardPack == null) {
            this.cardPack = new CardPack();
        }
        
        return this.cardPack;
    }
    
    public void readyCards() {
        this.getCardPack().initializeCardPack();
    }
    
    public void shuffleCards() {
        this.getCardPack().shuffle();
    }
    
    public void display() {
        for (Card c : this.getCardPack().getCards()) {
            System.out.println(c.getId());
        }
        System.out.println(this.getCardPack().getCount());
    }
}
