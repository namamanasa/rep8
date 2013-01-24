public class MyController1 {
public Account getAccount() {
return [SELECT Id, Name FROM Account
WHERE Id = :ApexPages.currentPage().getParameters().get('id')];
}
}