public with sharing class errormessages
{
    public  pageReference e1()
    {
    if(text==null)
    
    ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.Fatal,'Confirm errror msg'));
         
     
    return null;
    }
    
     public  pageReference e2()
    {
    if(text==null)
    
    ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.CONFIRM,'Confirm errror msg'));
         
     
    return null;
    }
    
     public  pageReference e3()
    {
    if(text==null)
    
    ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.Error,'Confirm errror msg'));
         
     
    return null;
    }
    
     public  pageReference e4()
    {
    if(text==null)
    
    ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.Info,'Confirm errror msg'));
         
     
    return null;
    }
    public string text
    {
    set;get;
    }
}