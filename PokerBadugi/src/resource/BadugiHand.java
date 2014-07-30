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
     public int winWeight;
    public static final String HEARTS = "Hearts";
    public static final String SPADES = "Spades";
    public static final String DIAMONDS = "Diamonds";
    public static final String CLUBS = "Clubs";
    
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
        ArrayList<Card> uniqueSuites = new ArrayList();
        ArrayList<Card> uniqueCards = new ArrayList();
        int flag=0;
        int flag2=0;
        
        for (Card c : this.cards)
        {
            flag=0;
            if(uniqueSuites.size()>=1)
            {
                System.out.println("oo");
            for( int i=0;i<uniqueSuites.size(); i++)
            {
                System.out.println(uniqueSuites.size());
            if (uniqueSuites.get(i).getSuite().getName()==c.getSuite().getName())
            {
                 System.out.println(uniqueSuites.size());
               
                flag=1;
                if(uniqueSuites.get(i).getCardValue().getWeight() >= c.getCardValue().getWeight())
                    {
                        System.out.println("yufy");
                        
                      //  System.out.println(uniqueSuites.get(0).getCardValue().getName());
                        
                        uniqueSuites.remove(uniqueSuites.get(i));
                        System.out.println(uniqueSuites.size());
                        uniqueSuites.add(c);    
                        break;
                            //  uniqueSuites=new ArrayList();
                        
                    }
                
            }
               
            } 
           
            if(flag==0)
            {
                uniqueSuites.add(c);
            }
            
            }
         
                
              else
            {
            uniqueSuites.add(c);
            }      
                    
         
        }
            
        
        
        
        for (Card c : uniqueSuites)
        {
            flag2=0;
            if(uniqueCards.size()>=1)
            {
             for (Card cc : uniqueCards) 
             {
            
                if (cc.getCardValue().getWeight()==c.getCardValue().getWeight())
                 {
                         flag2=1;
                        
                         break;
                 } 
             }
             if(flag2==0)
             {
              uniqueCards.add(c);
             }
            
            }
            else
            {
            uniqueCards.add(c);
            }
        }
        
        
        
        
        int maxWeight = uniqueCards.get(0).getCardValue().getWeight();
        String name = uniqueCards.get(0).getCardValue().getName();
        for (Card c : uniqueCards) {
            if (maxWeight < c.getCardValue().getWeight()) {
                maxWeight = c.getCardValue().getWeight();
                this.setWinWeight(this.getWinWeight()-c.getCardValue().getWeight());
                
                name = c.getCardValue().getName();
            }
        }
       
        int count = uniqueCards.size();
        
        String type = "";
        switch (count) {
            case 4:
                type = "- Badugi Hand";
              this.setWinWeight(this.getWinWeight()+400);
                break;
            case 3:
                type = "- Three Hand";
                this.setWinWeight(this.getWinWeight()+300);
                break;
            case 2:
                type = "- Two Hand";
                 this.setWinWeight(this.getWinWeight()+200);
                break;
            case 1:
                type = "- One Hand";
                 this.setWinWeight(this.getWinWeight()+100);
                break;
        }
        
        this.cards=new ArrayList();
        return name + type;
        
    }
    
    public String calculateBadugi2() {
        //setting the initial name
        int maxWeight = this.cards.get(0).getCardValue().getWeight();
        String name = this.cards.get(0).getCardValue().getName();
        for (Card c : this.cards) {
            if (maxWeight < c.getCardValue().getWeight()) {
                maxWeight = c.getCardValue().getWeight();
                 this.setWinWeight(this.getWinWeight()-c.getCardValue().getWeight());
                name = c.getCardValue().getName();
            }
        }
        //setting Badugi type
        ArrayList<String> uniqueSuites = new ArrayList();
        ArrayList<String> uniqueWeights = new ArrayList();
        
        for (Card c : this.cards) {
            if (!uniqueSuites.contains(c.getSuite().getName())) {
                uniqueSuites.add(c.getSuite().getName());
            }
        }
        for (Card c : this.cards) {
            if (!uniqueWeights.contains(c.getCardValue().getName())) {
                uniqueWeights.add(c.getCardValue().getName());
            }
        }
        
        int NumOfUniqueSuites = uniqueSuites.size();
        int NumOfUniqueWeights = uniqueWeights.size();
        int NumberOfUniqueCards = NumOfUniqueSuites + NumOfUniqueWeights;
        String type = "";
        switch (NumberOfUniqueCards) {
            case 7:
                type = "- Three Hand";
                 this.setWinWeight(this.getWinWeight()+300);
                break;
            case 8:
                type = "- Badugi Hand";
                  this.setWinWeight(this.getWinWeight()+400);
                break;
            default:
                if (NumOfUniqueSuites == 1 || NumOfUniqueWeights == 1) {
                    type = "- One Hand";
                     this.setWinWeight(this.getWinWeight()+100);
                } else {
                    type = "- Two Hand";
                      this.setWinWeight(this.getWinWeight()+200);
                }
                break;
        }
        
        this.cards=new ArrayList();
        return name + type;
    }
    
    public int getMaxWeight() {
        return this.getCardsService().getMaxWeight();
    }
 
    
    
    
     public void setWinWeight(int winWeight)
   {
    this.winWeight = winWeight;
   }
   
   public int getWinWeight()
   {
   return this.winWeight;
   }
    
}
