/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package businessLogic;

import dataAccess.CardsDataAccess;
import resource.*;
import java.util.ArrayList;
/**
 *
 * @author lenovo
 */
public class CardsService {
    private CardsDataAccess cardsDataAccess;
    
    public CardsDataAccess getCardsDataAccess() {
        if (this.cardsDataAccess == null) {
            this.cardsDataAccess = new CardsDataAccess();
        }
        return this.cardsDataAccess;
    }
    
    public void setCardsDataAccess(CardsDataAccess cardsDataAccess) {
        this.cardsDataAccess = cardsDataAccess;
    }
    
    public ArrayList<Suite> getSuites () {
        return this.getCardsDataAccess().getSuites();
    }
    
    public ArrayList<CardValue> getCardValues () {
        return this.getCardsDataAccess().getCardValues();
    }
    
    public String getConfiguredValue(String key) {
        return this.getCardsDataAccess().getConfiguredValue(key);
    }
    
//    public String getPictureExtension() {
//        return this.getCardsDataAccess().getPictureExtension();
//    }
}
