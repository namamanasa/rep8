public class MyController2 {
private final Account account;
public MyController2() {
account = [select id, name from Account where id =
:ApexPages.currentPage().getParameters().get('id')];
}
public Account getAccount() {
return account;
}
public PageReference save() {
update account;
return null;
}
}