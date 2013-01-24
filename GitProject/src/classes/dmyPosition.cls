public with sharing class dmyPosition {

    public String getPer() {
        return null;
    }


    public String prb { get; set; }

    public String getPrb() {
        return null;
    }


    public String pskr { get; set; }

    public String getPjd() {
        return null;
    }


    public String pmax { get; set; }

    public String getPmax() {
        return null;
    }


    public String PMin { get; set; }

    public String getPMin() {
        return null;
    }


    public String ptype { get; set; }

    public String getPlocation() {
        return null;
    }


    public String plocation { get; set; }

    public String getFromDate2() {
        return null;
    }


    public String pja { get; set; }

    public String getPja() {
        return null;
    }


    public String fromDate1 { get; set; }

    public String getFromDate1() {
        return null;
    }


    public String pfa { get; set; }

    public String getFromDate() {
        return null;
    }


    public String fromDate { get; set; }

    public String getPstatus() {
        return null;
    }


    public String pstatus { get; set; }

    public String getPtitle() {
        return null;
    }


    public String ptitle { get; set; }

    public PageReference save() {
    
    position__c position=new position__c();
   Integer   min=integer.valueOf(pmin);
     Integer max=integer.valueOf(pmax);   
     
      position.name=Ptitle;
      position.Min_Pay__c=min;
      position.Max_Pay__c=max;
      position.Status__c=pStatus;
      position.Location__c=pLocation;
      position.Type__c=pType;
    
    insert position;
    
        return null;
    }

}