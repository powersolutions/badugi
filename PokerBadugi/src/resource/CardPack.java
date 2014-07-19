/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package resource;

import java.util.ArrayList;
import java.util.Random;
import businessLogic.*;
/**
 *
 * @author lenovo
 */
public class CardPack {
    protected ArrayList<Card> cards;
    private CardsService cardsService;
    private static int count;
    
    
    public void setCards(ArrayList<Card> cards) {
        this.cards = cards;
    }
    
    public ArrayList<Card> getCards() {
        if (this.cards == null) {
            this.cards = new ArrayList();
        }
        return this.cards;
    }
    
    public void setCount() {
        CardPack.count = this.getCards().size();
    }
    
    public int getCount() {
        return CardPack.count;
    }
    public CardsService getCardsService(){
        if (this.cardsService == null) {
            this.cardsService = new CardsService();
        }
        return this.cardsService;
    }
    
    public void setCardsService(CardsService cardsService) {
        this.cardsService = cardsService;
    }
    
    public void initializeCardPack() {
        ArrayList<Suite> suites = this.getSuites();
        ArrayList<CardValue> cardValues = this.getCardValues();
        
        for (Suite suite : suites) {
            for (CardValue cardValue : cardValues) {
                Card card = new Card();
                card.setSuite(suite);
                card.setCardValue(cardValue);
                card.setId(suite.getName() + '-' + cardValue.getName());
               // System.out.println(suite.getName() + '-' + cardValue.getName());
                this.getCards().add(card);
            }
        }
        this.setCount();
      //  return this.cards;
    }
    
    public ArrayList getSuites() {
        return this.getCardsService().getSuites();
    }
    
    public ArrayList getCardValues() {
        return this.getCardsService().getCardValues();
    }
    
    public void shuffle() {
        ArrayList<Card> oldCardPack = this.getCards();
        ArrayList<Card> newCardPack = new ArrayList();
        Random random = new Random();
        int cardNumber;
        while (oldCardPack.isEmpty() == false) {
            cardNumber = random.nextInt(this.getCount());
            if (oldCardPack.size() > cardNumber) {
                newCardPack.add(oldCardPack.get(cardNumber));
                oldCardPack.remove(cardNumber);
            }
//            if(oldCardPack.get(cardNumber) != null) {
//                newCardPack.add(oldCardPack.get(cardNumber));
//                oldCardPack.remove(cardNumber);
//                
//            }
        }
        this.setCards(newCardPack);
        
    }
    
}
