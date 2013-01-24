public with sharing class SSSController {
    public SSSController(){
    }
    public Boolean displayPopup{get;set;}
    
    public void closePopup(){
        displayPopup=false;
    }
    public void openPopup(){
        displayPopup=true;
    }
}