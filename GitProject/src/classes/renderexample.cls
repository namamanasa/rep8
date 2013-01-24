public with sharing class renderexample
{
    //String method
    public String sText
    {
        get;set;
    }
    
    Account acct = new Account();
    
    List<Account> acclist = new List<Account>(); 

    //A boolean method to show the results
    Public Boolean showResults
    {
        get;set;
    }

    //Retrive method on any action
    public List<Account> getData()
    {
      return  acclist;
    }

    //Constructor
    public renderexample(ApexPages.StandardController controller)
    {
        showResults=false;
    }
    //This is for DoProcess to get values from Account   
    public PageReference doProcess()
    {
        String st='%'+sText+'%';
        
        acclist=[select id, name, Phone from account where name like :st ];
        
        if(acclist.size()>0)
        {
            showResults =true;
        }
        return null;
    }
 
}