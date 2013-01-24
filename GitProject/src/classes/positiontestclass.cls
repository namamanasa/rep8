@isTest
private class positiontestclass {
static testMethod void positiontestmethod() {
MyPositionController5 mp=new MyPositionController5();
mp.setpositiontitle('innovator');
mp.setminpay('10');
mp.setmaxpay('20');
mp.setlocation('india');
mp.setjobdescription('360');
mp.setresponsibilities('c,c++');
mp.setskillsrequired('innovator');
mp.setjava(true);
mp.setjavascript(true);
mp.setc(true);
mp.setapex(true);
mp.setjoboption(true);



/*Book__c b = new Book__c(Name='Behind the Cloud', Price__c=100);
System.debug('Price before inserting new book: ' + b.Price__c);
// Insert book
insert b;
// Retrieve the new book
b = [SELECT Price__c FROM Book__c WHERE Id =:b.Id];
System.debug('Price after trigger fired: ' + b.Price__c);
// Test that the trigger correctly updated the price
System.assertEquals(90, b.Price__c);*/
}
}