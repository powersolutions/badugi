/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package badugi;
import resource.*;
/**
 *
 * @author lenovo
 */
public class Badugi {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
//        Dealer dealer = new Dealer();
//        dealer.readyCards();
//        dealer.display();
//        dealer.shuffleCards();
//        System.out.println("=======================================================");
//        dealer.display();
        
        
        Dealer dealer = new Dealer();
            dealer.readyCards();
            String x = dealer.display();
//            System.out.println(x);
            dealer.shuffleCards();
//            System.out.println("=======================================================");
            String y = dealer.display();
//            System.out.println(y);
        
            User player1=new User();
            player1.setHand(dealer.distributeCards(4));
            String[] xx = player1.showHand();
            for (int i=0; i<xx.length; i ++) {
                System.out.println(xx[i]);
            }
            
            
//             System.out.println(y);
            
    }
}
