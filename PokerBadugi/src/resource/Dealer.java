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

    public String display() {
        String x = "";
        for (Card c : this.getCardPack().getCards()) {

            x += c.getId();
            x += "<br>";

        }
        x += this.getCardPack().getCount();
        x += "<br>";
        return x;
    }

//    public ArrayList<Hand> distributeCards(int playercount,int cardcount)
//    {
//    ArrayList<Hand> HandList=new ArrayList();
//    ArrayList<Card> cards=new ArrayList();
//    
//    int requestedCardCount=playercount*cardcount;
//    
//    if(this.getCardPack().getCards() != null)
//      {
//            for(int i=0;i<playercount;i++)
//            {
//            BadugiHand hand=new BadugiHand();
//            for(int j=0;i<cardcount;i++)
//            {
//           
//            cards.add(this.getCardPack().getCards().get(0));
//            cards.remove(this.getCardPack().getCards().get(0));
//          //  requestedCardCount--;
//            }
//            hand.setHand(cards);
//            HandList.add(hand);
//      }
//           
//      }
//            return HandList;
//    
//    
//    }    
//            
    public BadugiHand distributeCards(int cardCount) 
    {

        ArrayList<Card> cards = new ArrayList();
         BadugiHand hand = new BadugiHand();
       

        if (this.getCardPack().getCards() != null) {
            for (int i = 0; i < cardCount; i++) {
               
                 cards.add(this.getCardPack().getCards().get(0));
                 this.getCardPack().getCards().remove(0);
                    
                }
            hand.setHand(cards);
               
        }
        return hand;

    }
}
