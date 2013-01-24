public class PosController
{
  public final Position__c position;
  
  
  Integer min,max;
  
  
  
  public String Positiontitle{get;set;}
  public String Min_Pay{get;set;}
  public String Max_Pay{get;set;}
  public String Status{get;set;}
  public String Location{get;set;} 
  public String Type{get;set;}
  public Date OpenDate{get;set;}
  public String func{get;set;}
  public String joblevel{get;set;}
  public Boolean disablelevel{get;set;}
  
    
  public PosController()
  {
    position=new Position__c();
    disablelevel = true;
     
  }            
  
  public PageReference save()
  {
      min=integer.valueOf(Min_Pay);
      max=integer.valueOf(Max_Pay);   
     
      position.name=Positiontitle;
      position.Min_Pay__c=min;
      position.Max_Pay__c=max;
      position.Status__c=Status;
      position.Location__c=Location;
      position.Type__c=Type;
      position.Open_Date__c=openDate;
      position.Functional_Area__c=func;
    insert position;
    
    List<Position__c> posi=new List<Position__c>();
    posi=[SELECT Id FROM Position__c WHERE name=:Positiontitle];
    String id=String.valueOf(posi.get(0));
        
    String url='https://ap1.salesforce.com/'+id;
    PageReference pageRef = new PageReference(url);
    return pageRef;
  }

  public PageReference cancel()
  {
    String url='https://ap1.salesforce.com/a02/o';
    PageReference can=new PageReference(url);
    return can;
  
  }

public PageReference saveNew()
{
   
      min=integer.valueOf(Min_Pay);
      max=integer.valueOf(Max_Pay);   
     
      position.name=Positiontitle;
      position.Min_Pay__c=min;
      position.Max_Pay__c=max;
      position.Status__c=Status;
      position.Location__c=Location;
      position.Type__c=Type;
      position.Open_Date__c=openDate;
   
   insert position;
   String url='https://c.ap1.visual.force.com/apex/Position_new';
   PageReference pageRef = new PageReference(url);
   return pageRef;
}
}