public class posdisplay {
 List<Position__c> pos1;



    public List<Position__c> getpos1() {

         pos1 = [select Name,Max_Pay__c,Min_Pay__c,Status__c from Position__c limit 10];

        return pos1;

    }

}