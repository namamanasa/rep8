public class xyz {
public static void addHelloWorld(Account[] accs){
for (Account a:accs){
if (a.Hello__c != 'World') {
a.Hello__c = 'World';
}
}
}
}