public class MyPositionController {
    public Position__c pos=new position__c();
    
    public String positiontitle{get;set;}
    public String location{get;set;}
    public String status{get;set;}
    public String type{get;set;}
    public Date opendate{get;set;}
    public Date hireby{get;set;}
    public Date closedate{get;set;}
    public String travelrequired{get;set;}
    public String minpay{get;set;}
    public String maxpay{get;set;}
    Integer min,max;
    
    
  
    public PageReference save(){
        min=integer.valueOf(minpay);
        max=integer.valueOf(maxpay);
        pos.Name=positiontitle;
        pos.Location__c=location;
        pos.Status__c=status;
        pos.Open_Date__c=opendate;
        pos.Hire_By__c=hireby;
        pos.Close_Date__c=closedate;
        pos.Type__c=type;
        pos.Min_Pay__c=min;
        pos.Max_Pay__c=max;
        insert pos;
        
       return null;
        
        
        }

        public PageReference savenew(){
            min=integer.valueOf(minpay);
            max=integer.valueOf(maxpay);
            pos.name=positiontitle;
            pos.Status__c=status;
            pos.Location__c=location;
            pos.Type__c=type;
            pos.Open_Date__c=opendate;
            pos.Hire_By__c=hireby;
            pos.Close_Date__c=closedate;
            pos.Min_Pay__c=min;
            pos.Max_Pay__c=max;
            insert pos; 
            
             String url='https://c.ap1.visual.force.com/apex/sri1';
            PageReference reference=new PageReference(url);
            return reference;       
          
        }

        public PageReference cancel(){
            String url='https://ap1.salesforce.com';
            PageReference ref=new PageReference(url);
            return ref;
        }
        
  

}