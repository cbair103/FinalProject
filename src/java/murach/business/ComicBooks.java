package murach.business;

import java.io.Serializable;
import java.text.NumberFormat;
import java.util.Locale;

public class ComicBooks implements Serializable {
    
    private String title;
    private String publisher;
    private String author;
    private String illustrator;
    private String issue;
    private String location;
    private String price;
   
    public ComicBooks() {
        title = "";
        publisher = "";
        author = "";
        illustrator = "";
        issue = "";
        location = "";
        price = "";
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
    
    public String getPublisher(){
        return publisher;
    }
    
    public void setPublisher(String publisher){
        this.publisher = publisher;
    }
    
    public String getAuthor(){
        return author;
    }
    
    public void setAuthor(String author){
        this.author = author;
    }
    
    public String getIllustrator(){
        return illustrator;
    }
    
    public void setIllustrator(String illustrator){
        this.illustrator = illustrator;
    }
    
    public String getIssue(){
        return issue;
    }
    
    public void setIssue(String issue){
        this.issue = issue;
    }
    
    public String getLocation(){
        return location;
    }
    
    public void setLocation(String location){
        this.location = location;
    }
    
    public String getPrice(){
        return price;
    }
    
    public void setPrice(String price){
        this.price = price;
    }
    
    public String getFormattedDate() {
        NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(Locale.US);
        return currencyFormat.format(price);
    }
}