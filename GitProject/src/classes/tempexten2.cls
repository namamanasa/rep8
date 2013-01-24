public with sharing class tempexten2{
    public PageReference Chart() {
        return null;
    }
  Temperature__c t1;
   public String City{
  get;set;
 }
 public String getCity(){
 return City;
 
 
 }
   public String Ter{
  set;get;
  }
  List<SelectOption> options = new List<SelectOption>();
  public List<SelectOption> getItems() {
  
            options = new List<SelectOption>();
            options.add(new SelectOption('- Select City-','- Select city-'));
            for(Temperature__c t:cityoptionset)
            {
            
            options.add(new SelectOption(t.Name, t.Name));
            
            }
             
            return options;
        }
        List<Temperature__c> cityoption=[select Name from Temperature__c];
        
        Set<Temperature__c> cityoptionset =new Set<Temperature__c>(cityoption);
        // List<Temperature__c> cityoption1 = new List<Temperature__c>(cityoptionset);
        
  
  
 public tempexten2(ApexPages.StandardController controller){
    t1=new Temperature__c();
          
    }
    List<Temperature__c> temp;
    
   
    
 
        public List<Temperature__c> gettemp()
        {
                temp = [select Month__c,Heats__c from Temperature__c where Name=:getCity()];
                return temp;
        }
        
          public PageReference getChart()
    {
        getCity();
        return null;
    }
}