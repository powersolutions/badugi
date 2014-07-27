/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package resource;
import businessLogic.*;

/**
 *
 * @author lenovo
 */
public class Card {
    private String id;
    private Suite suite;
    private CardValue cardValue;
    private String picturePath;//must be a constant and static
    protected static String relativePicturePath;
    protected static String pictureExtension;
    protected CardsService cardsService;
    
    public void setCardsService(CardsService cardsService) {
        this.cardsService = cardsService;
    }
    
    public CardsService getCardsService() {
        if (this.cardsService == null) {
            this.cardsService = new CardsService();
        }
        return this.cardsService;
    }
    
    public Card() {
        this.setRelativePicturePath();
//        this.setPictureExtension();
    }
    
    public void setRelativePicturePath() {
        String key = "relativePath";
        Card.relativePicturePath = this.getCardsService().getConfiguredValue(key);
        
    }
    
//    public void setPictureExtension() {
//        Card.pictureExtension = this.getCardsService().getPictureExtension();
//    }
    public String getId() {
        return this.id;
    }
    
    public Suite getSuite() {
        return this.suite;
    }
    
    public CardValue getCardValue() {
        return this.cardValue;
    }
    
    public String getPicturePath() {
        return this.picturePath;
    }
    
    public void setId(String id) {
        this.id = id;
    }
    
    public void setSuite(Suite suite) {
        this.suite = suite;
    }
    
    public void setCardValue(CardValue cardValue) {
        this.cardValue = cardValue;
    }
    
    public void setPicturePath(String picturePath) {
        this.picturePath = picturePath;
    }
    
}
