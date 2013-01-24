public class dataListCon {
 List<Account> accounts;
    public List<Account> getAccounts() {
     accounts = [select name from account limit 5];
     return accounts;
      }
 }