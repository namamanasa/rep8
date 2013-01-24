public with sharing class sss_controller {
         
     
    public List<Innerc2> getParse(){  
        List<Innerc2> resultsObj = new List<Innerc2>();  
        String response='<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">' +
   '<soapenv:Header xmlns:v1="http://asb.apollogrp.edu/ASBService/base/ApolloHeader/v1" xmlns:stud="http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService"/>' +
   '<soapenv:Body>' +
      '<stud:getAllStudentCoursesResponse xmlns:stud="http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService">' +
         '<stud:studentCourseList>' +
            '<stud:studentCourseItem>' +
               '<stud:irn>98630</stud:irn>' +
               '<stud:classRostNum>3236992</stud:classRostNum>' +
               '<stud:courseOfferingNum>960340</stud:courseOfferingNum>' +
               '<stud:courseID>TQS/600</stud:courseID>'+
               '<stud:courseTitle>QUALITY CONCEPTS OVERVIEW</stud:courseTitle>' +
               '<stud:grade>A-</stud:grade>' +
               '<stud:officialStartDate>1993-02-17T00:00:00.000-07:00</stud:officialStartDate>' +
               '<stud:officialEndDate>1993-03-24T00:00:00.000-07:00</stud:officialEndDate>' +
               '<stud:scheduledOrga>9</stud:scheduledOrga>' +
               '<stud:programOrga/>' +
               '<stud:courseCreditEarned>3</stud:courseCreditEarned>' +
               '<stud:courseCredit>3</stud:courseCredit>' +
               '<stud:courseStatusType>CO</stud:courseStatusType>' +
               '<stud:resourceFlag>N</stud:resourceFlag>' +
               '<stud:displayDiscussionLinkFlag>N</stud:displayDiscussionLinkFlag>' +
               '<stud:classroomVersion>old</stud:classroomVersion>' +
               '<stud:groupID>TQS007</stud:groupID>' +
               '<stud:courseOfferingType>CL</stud:courseOfferingType>' +
               '<stud:unitType>Semester Credits</stud:unitType>' +
               '<stud:numOfUnits/>' +
               '<stud:aznaID/>' +
               '<stud:deadDate/>' +
               '<stud:heldGradeReason/>' +
               '<stud:appliedByAudit>Y</stud:appliedByAudit>' +
               '<stud:instructorIRN>111271</stud:instructorIRN>' +
               '<stud:instructorFirstName>CHERYL</stud:instructorFirstName>' +
               '<stud:instructorLastName>AUSTIN-BROWN</stud:instructorLastName>' +
               '<stud:addressLineOne>4615 E. Elwood</stud:addressLineOne>' +
               '<stud:addressLineTwo/>' +
               '<stud:addressLineThree/>' +
               '<stud:addressLineFour/>' +
               '<stud:city>Phoenix</stud:city>' +
               '<stud:state>AZ</stud:state>' +
               '<stud:postalCode>85040-1948</stud:postalCode>' +
               '<stud:country>US</stud:country>' +
            '</stud:studentCourseItem>' +
            
            '<stud:studentCourseItem>' +
               '<stud:irn>98630</stud:irn>' +
               '<stud:classRostNum>3473980</stud:classRostNum>' +
               '<stud:courseOfferingNum>1059191</stud:courseOfferingNum>' +
               '<stud:courseID>TQS/603</stud:courseID>' +
               '<stud:courseTitle>LEADERSHIP FOR QUALITY SERVICE</stud:courseTitle>' +
               '<stud:grade>A</stud:grade>' +
               '<stud:officialStartDate>1993-07-14T00:00:00.000-07:00</stud:officialStartDate>' +
               '<stud:officialEndDate>1993-08-18T00:00:00.000-07:00</stud:officialEndDate>' +
               '<stud:scheduledOrga>2</stud:scheduledOrga>' +
               '<stud:programOrga/>' +
               '<stud:courseCreditEarned>3</stud:courseCreditEarned>' +
               '<stud:courseCredit>3</stud:courseCredit>' +
               '<stud:courseStatusType>CO</stud:courseStatusType>' +
               '<stud:resourceFlag>N</stud:resourceFlag>' +
               '<stud:displayDiscussionLinkFlag>N</stud:displayDiscussionLinkFlag>' +
               '<stud:classroomVersion>old</stud:classroomVersion>' +
               '<stud:groupID>CTQS-0293</stud:groupID>' +
               '<stud:courseOfferingType>CL</stud:courseOfferingType>' +
               '<stud:unitType>Semester Credits</stud:unitType>' +
               '<stud:numOfUnits/>' +
               '<stud:aznaID/>' +
               '<stud:deadDate/>' +
               '<stud:heldGradeReason/>' +
               '<stud:appliedByAudit>Y</stud:appliedByAudit>' +
               '<stud:instructorIRN>99126</stud:instructorIRN>' +
               '<stud:instructorFirstName>RICHARD</stud:instructorFirstName>' +
               '<stud:instructorLastName>BOWMAN</stud:instructorLastName>' +
               '<stud:addressLineOne>4605 E. Elwood St.</stud:addressLineOne>' +
               '<stud:addressLineTwo/>' +
               '<stud:addressLineThree/>' +
               '<stud:addressLineFour/>' +
               '<stud:city>Phoenix</stud:city>' +
               '<stud:state>AZ</stud:state>' +
               '<stud:postalCode>85040-1948</stud:postalCode>' +
               '<stud:country>US</stud:country>' +
            '</stud:studentCourseItem>' +
         '</stud:studentCourseList>' +
      '</stud:getAllStudentCoursesResponse>' +
   '</soapenv:Body>' +
'</soapenv:Envelope>';
         
       
        Dom.Document doc = new Dom.Document();
        doc.load(response);
        dom.XmlNode root = doc.getRootElement();
       System.debug('root nam======>>>>>>>>>>e'+ root.getName());
         List<dom.Xmlnode> childs = root.getChildren();
          System.debug('root children======>>>>>>>>>>'+ childs);
            for(Dom.Xmlnode main : childs)
            {
                System.debug('first child of root=======>>>>>>>>>>>>>> '+main.getName());
                    if(main.getName().compareTo('Body') == 0)
                   {
                        
                         Dom.Xmlnode temp = main.getChildElement('getAllStudentCoursesResponse', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService');
                         System.debug('getAllStudentCoursesResponse========================>>>> '+ temp.getName());
                         List<Dom.Xmlnode> allNodes = temp.getChildren();
                         System.debug('allnodes '+ allNodes);
                                    for(Dom.Xmlnode node : allNodes)
                                    {
                                  //  System.debug('=======>>>>>>>>>>>>>> in body:allNodes');
                                        System.debug('=======>>>>>>>>>>>>>> node name'+node.getName());
                                            System.debug('studentCourseList=======================>>' + node);
                                                List<Dom.Xmlnode> Items=node.getChildren();
                                                for(Dom.Xmlnode itemlist:Items)
                                                {
                                                    System.debug('Item list============>'+itemlist.getName());
                                                //  List<Dom.Xmlnode> eachitemnode=itemlist.getChildren();
                                                //  for(Dom.Xmlnode eachitem:eachitemnode)
                                                //  {
                                                    //System.debug('each Item============>'+eachitem.getName()+':'+eachitem.getText()); 
                                                    
                                                         if(itemlist.getName() == 'studentCourseItem'){
                                                         	   
                                                         	   
                                                          Innerc i1=new Innerc();
                                                         	    
                                                         	    
                                                        i1.irn = itemlist.getChildElement('irn', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('irn','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.classRostNum = itemlist.getChildElement('classRostNum', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('classRostNum','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.courseOfferingNum = itemlist.getChildElement('courseOfferingNum', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('courseOfferingNum','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.courseID= itemlist.getChildElement('courseID', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('courseID','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.courseTitle= itemlist.getChildElement('courseTitle', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('courseTitle','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.grade= itemlist.getChildElement('grade', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('grade','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.officialStartDate= itemlist.getChildElement('officialStartDate', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('officialStartDate','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.officialEndDate= itemlist.getChildElement('officialEndDate', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('officialEndDate','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.scheduledOrga= itemlist.getChildElement('scheduledOrga', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('scheduledOrga','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.programOrga= itemlist.getChildElement('programOrga', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('programOrga','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.courseCreditEarned= itemlist.getChildElement('courseCreditEarned', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('courseCreditEarned','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.courseCredit= itemlist.getChildElement('courseCredit', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('courseCredit','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.courseStatusType= itemlist.getChildElement('courseStatusType', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('courseStatusType','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.resourceFlag= itemlist.getChildElement('resourceFlag', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('resourceFlag','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.displayDiscussionLinkFlag= itemlist.getChildElement('displayDiscussionLinkFlag', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('displayDiscussionLinkFlag','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.classroomVersion= itemlist.getChildElement('classroomVersion', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('classroomVersion','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.groupID= itemlist.getChildElement('groupID', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('groupID','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.courseOfferingType= itemlist.getChildElement('courseOfferingType', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('courseOfferingType','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.unitType= itemlist.getChildElement('unitType', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('unitType','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.numOfUnits= itemlist.getChildElement('numOfUnits', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('numOfUnits','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.aznaID= itemlist.getChildElement('aznaID', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('aznaID','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.deadDate= itemlist.getChildElement('deadDate', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('deadDate','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.heldGradeReason= itemlist.getChildElement('heldGradeReason', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('heldGradeReason','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.appliedByAudit= itemlist.getChildElement('appliedByAudit', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('appliedByAudit','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.instructorIRN= itemlist.getChildElement('instructorIRN', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('instructorIRN','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.instructorFirstName= itemlist.getChildElement('instructorFirstName', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('instructorFirstName','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.instructorLastName= itemlist.getChildElement('instructorLastName', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('instructorLastName','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.addressLineOne= itemlist.getChildElement('addressLineOne', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('addressLineOne','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.addressLineTwo= itemlist.getChildElement('addressLineTwo', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('addressLineTwo','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.addressLineThree= itemlist.getChildElement('addressLineThree', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('addressLineThree','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.addressLineFour= itemlist.getChildElement('addressLineFour', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('addressLineFour','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.city= itemlist.getChildElement('city', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('city','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.state= itemlist.getChildElement('state', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('state','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.postalCode= itemlist.getChildElement('postalCode', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('postalCode','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        i1.country= itemlist.getChildElement('country', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService') == null? null: itemlist.getChildElement('country','http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService').getText();
                                                        
                                                        
                                                        //resultsObj.add(new Innerc(irn, classRostNum, courseOfferingNum,courseID,courseTitle,grade,officialStartDate,officialEndDate,scheduledOrga,programOrga,courseCreditEarned,courseCredit,courseStatusType,resourceFlag,displayDiscussionLinkFlag,classroomVersion,groupID,courseOfferingType,unitType,numOfUnits,aznaID,deadDate,heldGradeReason,appliedByAudit,instructorIRN,instructorFirstName,instructorLastName,addressLineOne,addressLineTwo,addressLineThree,addressLineFour,city));
                                                        resultsObj.add(new Innerc2(i1));        
                                               //   }
                                                                                     
                                                    }
                                                }
                                           
                                            
                                        }
                                 
                     }
                         
                   
            }
         return resultsObj;
    }
    
    public class Innerc{
    public String irn{get;set;}  
    public String classRostNum{get;set;} 
    public String courseOfferingNum{get;set;}
    public String courseID{get;set;} 
    public String courseTitle{get;set;} 
    public String grade{get;set;} 
    public String officialStartDate{get;set;} 
    public String officialEndDate{get;set;} 
    public String programOrga{get;set;}
    public String scheduledOrga{get;set;}
    public String courseCreditEarned{get;set;}
    public String courseCredit{get;set;}
    public String courseStatusType{get;set;}
    public String resourceFlag{get;set;}
    public String displayDiscussionLinkFlag{get;set;}
    public String classroomVersion{get;set;}
    public String groupID{get;set;}
    public String courseOfferingType{get;set;}
    public String unitType{get;set;}
    public String numOfUnits{get;set;}
    public String aznaID{get;set;}
    public String deadDate{get;set;}
    public String heldGradeReason{get;set;}
    public String appliedByAudit{get;set;}
    public String instructorIRN{get;set;}
    public String instructorFirstName{get;set;}
    public String instructorLastName{get;set;}
    public String addressLineOne{get;set;}
    public String addressLineTwo{get;set;}
    public String addressLineThree{get;set;}
    public String addressLineFour{get;set;}
    public String city{get;set;}
    public String state{get;set;}
    public String postalCode{get;set;}
    public String country{get;set;}
   
    } 
    
    
    public class Innerc2
    {
        public Innerc i2{set;get;}
        public Innerc2(Innerc Param)
        {
            
            i2=new Innerc();
            i2=Param; 
            system.debug('Param============='+Param);
            
       
            
            
            
        } 

        
    }
}