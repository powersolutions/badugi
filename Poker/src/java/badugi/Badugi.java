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
        Dealer dealer = new Dealer();
        dealer.readyCards();
        dealer.display();
        dealer.shuffleCards();
        System.out.println("=======================================================");
        dealer.display();
    }
}
