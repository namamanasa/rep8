public class PositionController {
    public Position__c pos;
    
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
    
    
    public PositionController() {
        pos=new Position__c();
    }
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
        
        List<Position__c> pos1=new List<Position__c>();
        pos1=[SELECT Id FROM Position__C WHERE Name=:positiontitle];
        String id=String.valueOf(pos1.get(0));
        String url='https://ap1.salesforce.com/'+id;
        PageReference pageRef = new PageReference(url);
        return pageRef;
        }

        public PageReference savenew(){
            min=integer.valueOf(minpay);
            max=integer.valueOf(maxpay);
            pos.Name=positiontitle;
            pos.Status__c=status;
            pos.Location__c=location;
            pos.Type__c=type;
            pos.Open_Date__c=opendate;
            pos.Hire_By__c=hireby;
            pos.Close_Date__c=closedate;
            pos.Min_Pay__c=min;
            pos.Max_Pay__c=max;
            insert pos;        
            String url='https://c.ap1.visual.force.com/apex/Position_VSFpage4';
            PageReference reference=new PageReference(url);
            return reference;
        }

        public PageReference cancel(){
            String url='https://ap1.salesforce.com/a05/o';
            PageReference ref=new PageReference(url);
            return ref;
        }
     
}