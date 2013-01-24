public with sharing class JqueryTestClass 
{
    public class AccountData
    {
      public String AccountName{get;set;}
      public String AccountNumber{get;set;}
      AccountData(String AName,String ANumber)
      {
        AccountName = AName;
        AccountNumber = ANumber;
      }
    }
    public JqueryTestClass()
    {
      List<Account> AccountNames = [select Name,AccountNumber from Account];
      for(Integer i=0;i<AccountNames.size();i++)
      {
        AccountDetails.add(new AccountData(AccountNames[i].Name,AccountNames[i].AccountNumber));
      }
    }
  public List<AccountData> AccountDetails = new List<AccountData>();
  public boolean displayPopup {get; set;}     
    
    public void closePopup()
    {        
        displayPopup = false;    
    }     
    public void showPopup() 
    {        
        displayPopup = true;    
    }
    public List<AccountData> getAccountDetails()
    {    
      return AccountDetails;
    }
    
    
}