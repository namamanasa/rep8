public class MyPositionController1 {
    public Position__c pos;
    
    public String positiontitle{get;set;}
    public String location{get;set;}
    public String status{get;set;}
    public String type{get;set;}
    public Date opendate{get;set;}
    public Date hireby{get;set;}
    public Date closedate{get;set;}
    public String functionalarea{get;set;}
    public String joblevel{get;set;}
    public Boolean travelrequired{get;set;}
    public String minpay{get;set;}
    public String maxpay{get;set;}
    public String jobdescription{get;set;}
    public String responsibilities{get;set;}
    public String skillsrequired{get;set;}
    public String educationalrequirements{get;set;}
    public Boolean java{get;set;}
    public Boolean javascript{get;set;}
    public Boolean c{get;set;}
    public Boolean apex{get;set;} 
    public Boolean joboption{get;set;}
      
    public MyPositionController1() {
        pos=new Position__c();
        joboption=true;
    }
    public PageReference save(){
        pos.Name=positiontitle;
        pos.Location__c=location;
        pos.Status__c=status;
        pos.Open_Date__c=opendate;
        pos.Hire_By__c=hireby;
        pos.Close_Date__c=closedate;
        pos.Type__c=type;
        pos.Functional_Area__c=functionalarea;
        pos.Job_Level__c=joblevel;
        pos.Min_Pay__c=integer.valueOf(minpay);
        pos.Max_Pay__c=integer.valueOf(maxpay);
        pos.Travel_Required__c=travelrequired;
        pos.Job_Description__c=jobdescription;
        pos.Responsibilities__c=responsibilities;
        pos.Skills_Required__c=skillsrequired;
        pos.Educational_Requirements__c=educationalrequirements;
        pos.Java__c=java;
        pos.JavaScript__c=javascript;
        pos.C__c=c;
        pos.Apex__c=apex;
        
        insert pos;
        
        List<Position__c> pos1=new List<Position__c>();
        pos1=[SELECT Id FROM Position__C WHERE Name=:positiontitle];
        String id=String.valueOf(pos1.get(0));
        String url='https://ap1.salesforce.com/'+id;
        PageReference pageRef = new PageReference(url);
        return pageRef;
        }
        public PageReference savenew(){
            pos.Name=positiontitle;
            pos.Status__c=status;
            pos.Location__c=location;
            pos.Type__c=type;
            pos.Open_Date__c=opendate;
            pos.Hire_By__c=hireby;
            pos.Close_Date__c=closedate;
            pos.Functional_Area__c=functionalarea;
            pos.Job_Level__c=joblevel;
            pos.Min_Pay__c=integer.valueOf(minpay);
            pos.Max_Pay__c=integer.valueOf(maxpay);
            pos.Travel_Required__c=travelrequired;
            pos.Job_Description__c=jobdescription;
            pos.Responsibilities__c=responsibilities;
            pos.Skills_Required__c=skillsrequired;
            pos.Educational_Requirements__c=educationalrequirements;
            pos.Java__c=java;
            pos.JavaScript__c=javascript;
            pos.C__c=c;
            pos.Apex__c=apex;

            insert pos;        
            String url='https://c.ap1.visual.force.com/apex/Position_VSFpage4';
            PageReference reference=new PageReference(url);
            return reference;
        }
       public PageReference cancel(){
           PageReference ref=new PageReference('/a09/o');
           return ref;
        }
        
        public List<SelectOption> getjoblevels(){
            List<SelectOption> jlist=new List<SelectOption>();
            if(functionalarea != null){
                joboption=false;
                if(functionalarea.equals('Finance')){
                    jlist.add(new SelectOption('','--None--'));
                    jlist.add(new SelectOption('FN100','FN100'));
                    jlist.add(new SelectOption('FN200','FN200'));
                    jlist.add(new SelectOption('FN300','FN300'));
                    jlist.add(new SelectOption('FN400','FN400'));
                }
                if(functionalarea.equals('Human Resources')){
                    jlist.add(new SelectOption('','--None--'));
                    jlist.add(new SelectOption('HR100','HR100'));
                    jlist.add(new SelectOption('HR200','HR200'));
                    jlist.add(new SelectOption('HR300','HR300'));
                    jlist.add(new SelectOption('HR400','HR400'));
                }
                if(functionalarea.equals('Information Technology')){
                    jlist.add(new SelectOption('','--None--'));
                    jlist.add(new SelectOption('IT100','IT100'));
                    jlist.add(new SelectOption('IT200','IT200'));
                    jlist.add(new SelectOption('IT300','IT300'));
                    jlist.add(new SelectOption('IT400','IT400'));
                }
                if(functionalarea.equals('Miscellaneous')){
                    jlist.add(new SelectOption('','--None--'));
                    jlist.add(new SelectOption('MC100','MC100'));
                    jlist.add(new SelectOption('MC200','MC200'));
                    jlist.add(new SelectOption('MC300','MC300'));
                    jlist.add(new SelectOption('MC400','MC400'));
                }
                if(functionalarea.equals('Retail Operations')){
                    jlist.add(new SelectOption('','--None--'));
                    jlist.add(new SelectOption('RC100','RC100'));
                    jlist.add(new SelectOption('RC200','RC200'));
                    jlist.add(new SelectOption('RC300','RC300'));
                    jlist.add(new SelectOption('RC400','RC400'));
                }
                if(functionalarea.equals('Warehousing')){
                    jlist.add(new SelectOption('','--None--'));
                    jlist.add(new SelectOption('WH100','WH100'));
                    jlist.add(new SelectOption('WH200','WH200'));
                    jlist.add(new SelectOption('WH300','WH300'));
                    jlist.add(new SelectOption('WH400','WH400'));
                }
            }
            return jlist;
        }
        public List<SelectOption> getfareas(){
            List<SelectOption> flist=new List<SelectOption>();
            flist.add(new SelectOption('','--None--'));
            flist.add(new SelectOption('Finance','Finance'));
            flist.add(new SelectOption('Human Resources','Human Resources'));
            flist.add(new SelectOption('Information Technology','Information Technology'));
            flist.add(new SelectOption('Miscellaneous','Miscellaneous'));
            flist.add(new SelectOption('Retail Operations','Retail Operations'));
            flist.add(new SelectOption('Warehousing','Warehousing'));
            return flist;
        }
}