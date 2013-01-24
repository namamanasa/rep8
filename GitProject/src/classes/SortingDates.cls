public with sharing class SortingDates {

 
    
    public String courseStartDate{set;get;}
    public String courseEndDate{set;get;}
    public String noofDays{set;get;}
    public String noofMonths{set;get;}
    public String noofWeeks{set;get;}
    public String noofRemDays{set;get;}
    public string durationInMonths{get;set;}
    public string durationInWeeks{get;set;}
    public string noofRemDays1{get;set;}
    public String countOfYears{get;set;}
    
    public PageReference displaydays()
    {
        List<String> FullStartDate =  courseStartDate.split('T');
        List<string> StartDateValues = FullStartDate[0].split('-');
        List<String> FullEndDate =  courseEndDate.split('T');
        List<string> EndDateValues = FullEndDate[0].split('-');
        String edate=EndDateValues[1]+'/'+EndDateValues[2]+'/'+EndDateValues[0];
        String sdate=StartDateValues[1]+'/'+StartDateValues[2]+'/'+StartDateValues[0];
        Date endDate=Date.parse(edate);
        Date startDate=Date.parse(sdate);
        System.debug(startDate);
        System.debug(endDate);        
        noofDays=String.valueOf(startDate.daysBetween(endDate));
        countOfYears=String.valueOf(Integer.valueOf(noofDays)/360);
        noofWeeks=String.valueOf(Integer.valueOf(noofDays)/7)+' week(s)';       
        noofMonths=String.valueOf(Integer.valueOf(noofDays)/30)+' month(s)';
        noofRemDays=String.valueOf(math.mod(Integer.valueOf(noofDays),30))+' days';
        noofRemDays1=String.valueOf(math.mod(Integer.valueOf(noofDays),7))+' days';      
        durationInMonths=noofMonths+' '+noofRemDays;
        durationInWeeks=noofWeeks+' '+noofRemDays1;
        return null;
    } 


}