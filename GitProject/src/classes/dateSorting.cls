public with sharing class dateSorting 
{
Date date1=date.newinstance(1965,2,10);
    Integer academicYear;
//  Date startDate=new Date(2,2,2007);
//  Date endDate=new Date(1,1,2011);
Date startDate = date.newinstance(1960, 2, 17);
        Date endDate = date.newinstance(1965, 2, 17);
        
    Integer Diff=startDate.monthsBetween(date1);
    public dateSorting()
    {
    /*   System.debug('manasa============================Nalini');  
        if(diff<=12)
        academicYear=1;
        else if(diff>12 && diff<=24)
        academicYear=2;
        else if(diff>24 && diff<=36)
        academicYear=3;
        else
        academicYear=10;
        System.debug('The date belongs to academicYear'+academicYear);
         System.debug('Difference between two dates is'+Diff);*/
        Integer rem;
        Integer Quot;
        Quot=Diff/12;
       // rem=math.mod(Diff,12);
       // system.assertEquals(remainder, 0);
        //System.debug('Remainder is====================>'+rem);
           System.debug('Remainder is====================>'+Quot);
           if(Quot<=1)
            academicYear=1;
            else if(Quot<=2)
             academicYear=2;
             else if(Quot<=3)
             academicYear=3;
              System.debug('Remainder is====================>'+ academicYear);
           
    }
	
/*	public class dateSubClass
	{
		Date date1=date.newinstance(1963,2,10);
		Integer academicYear;
		
	}
	dateSorting()
	{
	List<dateSubClass> dc=new List<dateSubClass>();
	dateSubClass dateSubClassObject=new dateSubClass();
	dateSubClassObject.date1=Date.ValueOf(2/2/2000);
	dc.add(dateSubClassObject);
		
	} */



}