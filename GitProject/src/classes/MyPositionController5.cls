public class MyPositionController5 {
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
    
    public void setpositiontitle(String a)
{
positiontitle = a;
}

  public void setlocation(String a)
{
location=a;
}
   
    public void setminpay(String a)
{
minpay = a;
}
  public void setmaxpay(String a)
{
positiontitle = a;
}
 public void setresponsibilities(String a)
{
responsibilities = a;
}
 public void setjobdescription(String a)
{
jobdescription= a;
}
 public void setskillsrequired(String a)
{
skillsrequired = a;
}  

public void setopendate(Date a)
{
opendate = a;
}

public void sethireby(Date a)
{
hireby = a;
}
public void setclosedate(Date a)
{
closedate = a;
}
public void setjava(boolean b)
{
java=b;
}
public void setjavascript(boolean b)
{
javascript=b;
}
public void setc(boolean b)
{
c=b;
}
public void setapex(boolean b)
{
apex=b;
}
public void setjoboption(boolean b)
{
joboption=b;
}  
    public MyPositionController5() {
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
        
       /* List<Position__c> pos1=new List<Position__c>();
        pos1=[SELECT Id FROM Position__C WHERE name=:positiontitle];
        String id=String.Valueof(pos1);*/
        
      PageReference p1= new ApexPages.standardController(Pos).view();
      p1.setRedirect(true);
      return p1;
        

   
        }
        public PageReference savenew(){
       /*  pos.Name=positiontitle;
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

            insert pos;    */    
        
        save();
           
            String url='https://c.ap1.visual.force.com/apex/Pos5';
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
                    jlist.add(new SelectOption('FN-100','FN-100'));
                    jlist.add(new SelectOption('FN-200','FN-200'));
                    jlist.add(new SelectOption('FN-300','FN-300'));
                    jlist.add(new SelectOption('FN-400','FN-400'));
                }
                if(functionalarea.equals('Human Resources')){
                    jlist.add(new SelectOption('','--None--'));
                    jlist.add(new SelectOption('HR-100','HR-100'));
                    jlist.add(new SelectOption('HR-200','HR-200'));
                    jlist.add(new SelectOption('HR-300','HR-300'));
                    jlist.add(new SelectOption('HR-400','HR-400'));
                }
                if(functionalarea.equals('Information Technology')){
                    jlist.add(new SelectOption('','--None--'));
                    jlist.add(new SelectOption('IT-100','IT-100'));
                    jlist.add(new SelectOption('IT-200','IT-200'));
                    jlist.add(new SelectOption('IT-300','IT-300'));
                    jlist.add(new SelectOption('IT-400','IT-400'));
                }
                if(functionalarea.equals('Miscellaneous')){
                    jlist.add(new SelectOption('','--None--'));
                    jlist.add(new SelectOption('MC-100','MC-100'));
                    jlist.add(new SelectOption('MC-200','MC-200'));
                    jlist.add(new SelectOption('MC-300','MC-300'));
                    jlist.add(new SelectOption('MC-400','MC-400'));
                }
                if(functionalarea.equals('Retail Operations')){
                    jlist.add(new SelectOption('','--None--'));
                    jlist.add(new SelectOption('RC-100','RC-100'));
                    jlist.add(new SelectOption('RC-200','RC-200'));
                    jlist.add(new SelectOption('RC-300','RC-300'));
                    jlist.add(new SelectOption('RC-400','RC-400'));
                }
                if(functionalarea.equals('Warehousing')){
                    jlist.add(new SelectOption('','--None--'));
                    jlist.add(new SelectOption('WH-100','WH-100'));
                    jlist.add(new SelectOption('WH-200','WH-200'));
                    jlist.add(new SelectOption('WH-300','WH-300'));
                    jlist.add(new SelectOption('WH-400','WH-400'));
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