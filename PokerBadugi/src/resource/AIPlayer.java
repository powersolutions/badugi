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
    
//    protected HashMap<String ,Integer > suiteCount = new HashMap<String ,Integer >();
//    
//    
//    protected int spadesCount;
//    protected int diamondsCount;
//    protected int clubsCount;
//    protected int heartsCount;
    
//    public AIPlayer()
//    {
//    suiteCount.put("spadesCount", this.spadesCount);
//    suiteCount.put("diamondsCount", this.diamondsCount);
//    suiteCount.put("clubsCount", this.clubsCount);
//    suiteCount.put("heartsCount", this.heartsCount);
//    }
//    
    ArrayList<Card>   replaceList = new ArrayList();
    
    public ArrayList<Card> checkHand()
    {
        
         
         
         ArrayList<Card>   spadeList = new ArrayList();
         ArrayList<Card>   clubList = new ArrayList();
         ArrayList<Card>   diamondList = new ArrayList();
         ArrayList<Card>   heartList = new ArrayList();
         
         
         
//         ArrayList<String> duplicates = new ArrayList();
//        // duplicates.add(this.BadugiHand.getHand().get(0).getSuite().getName());
//         ArrayList<String> uniqueSuitesFromDuplicates = new ArrayList();
//         
         
                                                        //Checking for a cardhand with duplicates
//        for (Card c : this.BadugiHand.getHand()) 
//        
//        {
//         //   if (duplicates.contains(c.getSuite().getName())) {
//                duplicates.add(c.getSuite().getName());
//          //  }
//        }
//        
         
         
     for (Card c : this.BadugiHand.getHand()) 
     {
            
            
          
    switch( c.getSuite().getName()) 
            {
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
            this.BadugiHand.getHand().remove(c);
     
   
//           switch( c.getSuite().getName()) 
//            {
//               case "Hearts":
//                   this.heartsCount++;
//                    suiteCount.put("heartsCount", this.heartsCount);
//                   break;
//               case "Spades":
//                   this.spadesCount++;
//                     suiteCount.put("spadesCount", this.spadesCount);
//                   break;
//               case "Clubs":
//                   this.clubsCount++;
//                    suiteCount.put("clubsCount", this.clubsCount);
//                   break;
//               case "Diamonds":
//                   this.diamondsCount++;
//                    suiteCount.put("diamondsCount", this.diamondsCount);
//                   break;    
//            }
        }
    
     
     
     
     
     
     
     
//    Iterator i = suiteCount.entrySet().iterator();
//    while(i.hasNext())
//    {
//    (suiteCount.entry) 
//    
//    }
        
//                for( int value : suiteCount.values())
//                {
//                if( value <= 1)
//                {
//                continue;
//                }
//                
//                
//                }
     
     
//        for (String name : duplicateSuites) 
//        {
//            if (!uniqueSuitesFromDuplicates.contains(name)) {
//                uniqueSuitesFromDuplicates.add(name);
//            }
//        }
//        
//        
//        
//        for (String name : uniqueSuitesFromDuplicates) 
//        {
//          for (Card c : this.BadugiHand.getHand()) 
//          {
//            if (name==c.getCardValue().getName())
//            {
//                replaceList.add(c);
//            }
//          }
        
        this.doReplace(heartList);
        this.doReplace(spadeList);
        this.doReplace(diamondList);
        this.doReplace(clubList);
      
                                                        // In Case of a AI player having a Badugi Hand..
                                                        // replaces the max weight card(If the max weight card >10)
        if(!(replaceList.size()>0))
        {
        int maxWeight = this.BadugiHand.getHand().get(0).getCardValue().getWeight();
     //   String name = this.cards.get(0).getCardValue().getName();
        for (Card c : this.BadugiHand.getHand()) {
            if (maxWeight < c.getCardValue().getWeight()) 
            {
                maxWeight = c.getCardValue().getWeight();
              //  name = c.getCardValue().getName();
            }
        }
        for (Card c : this.BadugiHand.getHand()) {
            if (maxWeight == c.getCardValue().getWeight()&& maxWeight>10 ) 
            {
                replaceList.add(c);
              //  name = c.getCardValue().getName();
            }
        }
    
    }
    return replaceList;
   }


   public void doReplace (ArrayList<Card> cardList) {
       if (cardList.size() > 1) {
           int minimumWeight = cardList.get(0).getCardValue().getWeight();
           Card minimumWeightCard = cardList.get(0);
           for (Card c : cardList) {
              if (minimumWeight > c.getCardValue().getWeight()) {
                minimumWeight = c.getCardValue().getWeight();
                minimumWeightCard = c ;
            }
          }
          this.BadugiHand.getHand().add(minimumWeightCard);
          cardList.remove(minimumWeightCard);
          for (Card c : cardList) {
               this.replaceList.add(c);
           }
       } else {
           for (Card c : cardList) {
               this.BadugiHand.getHand().add(c);
           }
       }
       
        
   }

}
