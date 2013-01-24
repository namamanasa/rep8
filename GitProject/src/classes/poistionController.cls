global with sharing class poistionController {

     public Position__c pos{get;set;}

     public poistionController() {

         pos = [select Max_Pay__c from Position__c where Name = 'Developer'];

      }

}