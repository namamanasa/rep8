public with sharing class qry1class
{
public static void qry1()
{
// A limit bind
Account[] b;
Integer i = 5;
B = [SELECT name FROM Account LIMIT :i];
system.debug(b);


}


}