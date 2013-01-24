public class discount {
public static void applyDiscount(Books__c[] books) {
for (Books__c b :books){
b.Price__c *= 0.9;
}
}
}