public with sharing class dupclass {

    public PageReference save() {
    position__c pos=new position__c();
  pos.name= ApexPages.currentPage().getParameters().get('title');
 
      
    insert pos;
    update pos;
    
    
    return null;
    
     
    
      
        }

}