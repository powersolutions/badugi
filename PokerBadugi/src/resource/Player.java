/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package resource;
import java.util.*;
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
     
   public String exchangeCards(List<String> cardsToExchange, Dealer dealer) {
       int numberOfCards = cardsToExchange.size();
       ArrayList<Card> replaceList = new ArrayList();
       for (Card c : this.getHand().getHand()) {
           for (String cardName : cardsToExchange) {
               if (cardName == c.getId()) {
                   replaceList.add(c);
                   this.getHand().getHand().remove(c);
//                   continue;
               }
           }
       }
       dealer.addToUsedCardPack(replaceList);
       ArrayList<Card> newCards = dealer.replaceCards(numberOfCards);
//       ArrayList existingCards = this.getHand().getHand();
       String newCardNames = "";
       this.getHand().getHand().add(newCards.get(0));
       newCardNames += newCards.get(0).getId();
       for (int i = 1; i<newCards.size(); i++) {
           this.getHand().getHand().add(newCards.get(i));
           newCardNames += ","+newCards.get(i).getId();
       }
       
       return newCardNames;
       
       
   }
   
   
}
