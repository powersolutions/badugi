/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package resource;

import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;
import java.util.*;

/**
 *
 * @author ACER
 */
public class AIPlayer extends Player {

    ArrayList<Card> replaceList = new ArrayList();

    public String checkHandAndReplace(Dealer dealer) {
        ArrayList<Card> spadeList = new ArrayList();
        ArrayList<Card> clubList = new ArrayList();
        ArrayList<Card> diamondList = new ArrayList();
        ArrayList<Card> heartList = new ArrayList();
        
        
        ArrayList<Card> removals = new ArrayList();
        for (Card c : this.getHand().getHand()) {
            
            switch (c.getSuite().getName()) {
                case "Hearts":
                    heartList.add(c);
                    break;
                case "Spades":
                    spadeList.add(c);
                    break;
                case "Clubs":
                    clubList.add(c);
                    break;
                case "Diamonds":
                    diamondList.add(c);
                    break;
            }
//            removals.add(c);

        }
        ArrayList<Card> emptySet = new ArrayList();
        this.getHand().setHand(emptySet);
        
        this.doReplace(heartList);
        this.doReplace(spadeList);
        this.doReplace(diamondList);
        this.doReplace(clubList);
//=============================================================================
        // In Case of a AI player having a Badugi Hand..
        // replaces the max weight card(If the max weight card >10)
//        if (!(replaceList.size() > 0)) {
//            int maxWeight = this.BadugiHand.getHand().get(0).getCardValue().getWeight();
        //   String name = this.cards.get(0).getCardValue().getName();
//            for (Card c : this.BadugiHand.getHand()) {
//                if (maxWeight < c.getCardValue().getWeight()) {
//                    maxWeight = c.getCardValue().getWeight();
        //  name = c.getCardValue().getName();
//                }
//            }
//            for (Card c : this.BadugiHand.getHand()) {
//                if (maxWeight == c.getCardValue().getWeight() && maxWeight > 10) {
//                    replaceList.add(c);
        //  name = c.getCardValue().getName();
//                }
//            }

//        }
//        =====================================================================================
        int numberOfCardsToReplace = this.replaceList.size();

        dealer.addToUsedCardPack(this.replaceList);
        ArrayList<Card> newCards = dealer.replaceCards(numberOfCardsToReplace);
        
        String AIPlayerHand="";
        
        for (int i = 0; i < newCards.size(); i++) {
            this.getHand().getHand().add(newCards.get(i));
            
        }

        
        for (Card c :this.getHand().getHand())
        {
        AIPlayerHand+=c.getId()+",";
        
        }
        replaceList = new ArrayList();
        return numberOfCardsToReplace+"$"+AIPlayerHand;
    }

    public void doReplace(ArrayList<Card> cardList) {
        if (cardList.size() > 1) {
            int minimumWeight = cardList.get(0).getCardValue().getWeight();
            Card minimumWeightCard = cardList.get(0);
            for (Card c : cardList) {
                if (minimumWeight > c.getCardValue().getWeight()) {
                    minimumWeight = c.getCardValue().getWeight();
                    minimumWeightCard = c;
                }
            }
            this.getHand().getHand().add(minimumWeightCard);
            cardList.remove(minimumWeightCard);
            for (Card c : cardList) {
                this.replaceList.add(c);
            }
        } else {
            for (Card c : cardList) {
                this.getHand().getHand().add(c);
            }
        }


    }
}
