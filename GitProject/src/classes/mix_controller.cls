public with sharing class mix_controller {

String StudentCourseService='http://asb.apollogrp.edu/ASBService/service/Student/StudentCourseService';
String StudentProgramService='http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService';
    
    public List<CourseDetailsDataMembers> courseDetailsList{set;get;}
    
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


public List<responseElements> responseList{set;get;}
    String response2='<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">' +
   '<soapenv:Header xmlns:v1="http://asb.apollogrp.edu/ASBService/base/ApolloHeader/v1" xmlns:v11="http://asb.apollogrp.edu/ASBService/base/NameValuePair/v1" xmlns:stud="http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService">' + 
      '<v1:ApolloHeader_1/>' +
   '</soapenv:Header>' +
   '<soapenv:Body>' +
      '<stud:getStudentProgramSummaryResponse xmlns:stud="http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService">' +
         '<stud:studentProgramSummary>' +
            '<stud:studentProgramSummaryItem>' +
               '<stud:programType>TQS</stud:programType>' +
               '<stud:programVersion>001</stud:programVersion>' +
               '<stud:programOrga/>' +
               '<stud:programGPA>3.83</stud:programGPA>' +
               '<stud:programRequiredCredits>12</stud:programRequiredCredits>' + 
               '<stud:programCompletedCredits>12</stud:programCompletedCredits>' +
               '<stud:programRemainingCredits>0</stud:programRemainingCredits>' +
               '<stud:programPercentComplete>100</stud:programPercentComplete>' +
               '<stud:programAcademicStatus>RG</stud:programAcademicStatus>' +
               '<stud:programAcademicStatusDate>1995-04-13T13:07:40.000-07:00</stud:programAcademicStatusDate>' +
               '<stud:studentAcademicStatus>RG</stud:studentAcademicStatus>' +
               '<stud:studentAcademicStatusDate>2001-10-26T20:29:29.000-07:00</stud:studentAcademicStatusDate>' +
               '<stud:programCompleteDate/>' +
               '<stud:primaryProgram>N</stud:primaryProgram>' +
               '<stud:studentEnrollmentStatus>' +
                  '<stud:enrollmentStatusType>Withdrawn</stud:enrollmentStatusType>' +
                  '<stud:withdrawalDateofDetermination>2012-01-27T00:00:00.000-07:00</stud:withdrawalDateofDetermination>' +
                  '<stud:withdrawalType>Unofficial Withdrawal</stud:withdrawalType>' +
               '</stud:studentEnrollmentStatus>' +
               '<stud:programEnrollmentStatus>' +
                  '<stud:enrollmentStatusType>Withdrawn</stud:enrollmentStatusType>' +
                  '<stud:withdrawalDateofDetermination>2012-01-27T00:00:00.000-07:00</stud:withdrawalDateofDetermination>' +
                  '<stud:withdrawalType>Unofficial Withdrawal</stud:withdrawalType>' +
               '</stud:programEnrollmentStatus>' +
        '<stud:advisordetails>' +
        
            '<stud:firstName>Harry</stud:firstName>' +
            '<stud:middleName/>' +
            '<stud:lastName>Watson</stud:lastName>' +
            '<stud:roleCode/>' +
            '<stud:emailAddres>Harry.Watson@phoenix.edu</stud:emailAddres>' +
            '<stud:phoneAreaCode>(602)</stud:phoneAreaCode>' +
            '<stud:phoneNumber>874-6989</stud:phoneNumber>' +
            '<stud:phoneExtension>x99857</stud:phoneExtension>' +
            '<stud:faxAreaCode>(602)</stud:faxAreaCode>' +
            '<stud:faxNumber>547-698</stud:faxNumber>' +
        
        '</stud:advisordetails> ' +
               '<stud:lastStudentAcademicRelatedActivity>1996-03-14T00:00:00.000-07:00</stud:lastStudentAcademicRelatedActivity>' +
               '<stud:lastProgramAcademicRelatedActivity>2012-01-03T00:00:00.000-07:00</stud:lastProgramAcademicRelatedActivity>' +
            '</stud:studentProgramSummaryItem>' +
         '</stud:studentProgramSummary>'+ 
      '</stud:getStudentProgramSummaryResponse>' +
   '</soapenv:Body>' +
'</soapenv:Envelope>';
    
    public mix_controller()
    {
    courseDetailsList = new List<CourseDetailsDataMembers>(); 
    courseDetailsList = demoStudentRecordType(response);    
    
    
     responseList=new List<responseElements>();
         responseList=soapResponseParsing(response2);
    }
    
   public List<CourseDetailsDataMembers> demoStudentRecordType(String resp1){  
    List<CourseDetailsDataMembers> CourseDetailsDataMembersList = new List<CourseDetailsDataMembers>();  
    Dom.Document doc = new Dom.Document();
    doc.load(resp1);
    dom.XmlNode root = doc.getRootElement();
    System.debug('root nam======>>>>>>>>>>e'+ root.getName());
     List<dom.Xmlnode> childs = root.getChildren();
      System.debug('root children======>>>>>>>>>>'+ childs);
        for(Dom.Xmlnode main : childs)
        {
            System.debug('first child of root=======>>>>>>>>>>>>>> '+main.getName());
                if(main.getName().compareTo('Body') == 0)
               {
                    
                     Dom.Xmlnode temp = main.getChildElement('getAllStudentCoursesResponse', StudentCourseService);
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
                                                           
                                                           
                                                      CourseDetailsDataMembers CourseDetailsDataMembersObject=new CourseDetailsDataMembers();
                                                            
                                                            
                                                    CourseDetailsDataMembersObject.irn = itemlist.getChildElement('irn', StudentCourseService) == null? null: itemlist.getChildElement('irn',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.classRostNum = itemlist.getChildElement('classRostNum', StudentCourseService) == null? null: itemlist.getChildElement('classRostNum',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.courseOfferingNum = itemlist.getChildElement('courseOfferingNum', StudentCourseService) == null? null: itemlist.getChildElement('courseOfferingNum',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.courseID= itemlist.getChildElement('courseID', StudentCourseService) == null? null: itemlist.getChildElement('courseID',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.courseTitle= itemlist.getChildElement('courseTitle', StudentCourseService) == null? null: itemlist.getChildElement('courseTitle',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.grade= itemlist.getChildElement('grade', StudentCourseService) == null? null: itemlist.getChildElement('grade',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.officialStartDate= itemlist.getChildElement('officialStartDate', StudentCourseService) == null? null: itemlist.getChildElement('officialStartDate',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.officialEndDate= itemlist.getChildElement('officialEndDate', StudentCourseService) == null? null: itemlist.getChildElement('officialEndDate',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.scheduledOrga= itemlist.getChildElement('scheduledOrga', StudentCourseService) == null? null: itemlist.getChildElement('scheduledOrga',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.programOrga= itemlist.getChildElement('programOrga', StudentCourseService) == null? null: itemlist.getChildElement('programOrga',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.courseCreditEarned= itemlist.getChildElement('courseCreditEarned', StudentCourseService) == null? null: itemlist.getChildElement('courseCreditEarned',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.courseCredit= itemlist.getChildElement('courseCredit', StudentCourseService) == null? null: itemlist.getChildElement('courseCredit',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.courseStatusType= itemlist.getChildElement('courseStatusType', StudentCourseService) == null? null: itemlist.getChildElement('courseStatusType',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.resourceFlag= itemlist.getChildElement('resourceFlag', StudentCourseService) == null? null: itemlist.getChildElement('resourceFlag',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.displayDiscussionLinkFlag= itemlist.getChildElement('displayDiscussionLinkFlag', StudentCourseService) == null? null: itemlist.getChildElement('displayDiscussionLinkFlag',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.classroomVersion= itemlist.getChildElement('classroomVersion', StudentCourseService) == null? null: itemlist.getChildElement('classroomVersion',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.groupID= itemlist.getChildElement('groupID', StudentCourseService) == null? null: itemlist.getChildElement('groupID',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.courseOfferingType= itemlist.getChildElement('courseOfferingType', StudentCourseService) == null? null: itemlist.getChildElement('courseOfferingType',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.unitType= itemlist.getChildElement('unitType', StudentCourseService) == null? null: itemlist.getChildElement('unitType',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.numOfUnits= itemlist.getChildElement('numOfUnits', StudentCourseService) == null? null: itemlist.getChildElement('numOfUnits',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.aznaID= itemlist.getChildElement('aznaID', StudentCourseService) == null? null: itemlist.getChildElement('aznaID',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.deadDate= itemlist.getChildElement('deadDate', StudentCourseService) == null? null: itemlist.getChildElement('deadDate',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.heldGradeReason= itemlist.getChildElement('heldGradeReason', StudentCourseService) == null? null: itemlist.getChildElement('heldGradeReason',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.appliedByAudit= itemlist.getChildElement('appliedByAudit', StudentCourseService) == null? null: itemlist.getChildElement('appliedByAudit',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.instructorIRN= itemlist.getChildElement('instructorIRN', StudentCourseService) == null? null: itemlist.getChildElement('instructorIRN',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.instructorFirstName= itemlist.getChildElement('instructorFirstName', StudentCourseService) == null? null: itemlist.getChildElement('instructorFirstName',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.instructorLastName= itemlist.getChildElement('instructorLastName', StudentCourseService) == null? null: itemlist.getChildElement('instructorLastName',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.addressLineOne= itemlist.getChildElement('addressLineOne', StudentCourseService) == null? null: itemlist.getChildElement('addressLineOne',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.addressLineTwo= itemlist.getChildElement('addressLineTwo', StudentCourseService) == null? null: itemlist.getChildElement('addressLineTwo',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.addressLineThree= itemlist.getChildElement('addressLineThree', StudentCourseService) == null? null: itemlist.getChildElement('addressLineThree',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.addressLineFour= itemlist.getChildElement('addressLineFour', StudentCourseService) == null? null: itemlist.getChildElement('addressLineFour',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.city= itemlist.getChildElement('city', StudentCourseService) == null? null: itemlist.getChildElement('city',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.state= itemlist.getChildElement('state', StudentCourseService) == null? null: itemlist.getChildElement('state',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.postalCode= itemlist.getChildElement('postalCode', StudentCourseService) == null? null: itemlist.getChildElement('postalCode',StudentCourseService).getText();
                                                    CourseDetailsDataMembersObject.country= itemlist.getChildElement('country', StudentCourseService) == null? null: itemlist.getChildElement('country',StudentCourseService).getText();
                                                    
                                                    
                                                    //CourseDetailsDataMembersList.add(new CourseDetailsDataMembers(irn, classRostNum, courseOfferingNum,courseID,courseTitle,grade,officialStartDate,officialEndDate,scheduledOrga,programOrga,courseCreditEarned,courseCredit,courseStatusType,resourceFlag,displayDiscussionLinkFlag,classroomVersion,groupID,courseOfferingType,unitType,numOfUnits,aznaID,deadDate,heldGradeReason,appliedByAudit,instructorIRN,instructorFirstName,instructorLastName,addressLineOne,addressLineTwo,addressLineThree,addressLineFour,city));
                                                    CourseDetailsDataMembersList.add(CourseDetailsDataMembersObject);        
                                           //   }
                                                                                 
                                                }
                                            }
                                       
                                        
                                    }
                                 
                     }
                         
                   
            }
         return CourseDetailsDataMembersList;
    }
    
    
    
    
     public List<responseElements> soapResponseParsing(String soap_response)
    {
        List<responseElements> responseList_list=new List<responseElements>();
        Dom.Document doc = new Dom.Document();
        doc.load(soap_response);
        dom.XmlNode resp_root = doc.getRootElement();
        System.debug('root nam======>>>>>>>>>>e'+ resp_root.getName());
         List<dom.Xmlnode> resp_childs = resp_root.getChildren();
          System.debug('root children======>>>>>>>>>>'+ resp_childs);
            for(Dom.Xmlnode resp_main : resp_childs)
            {
                System.debug('first child of root=======>>>>>>>>>>>>>> '+resp_main.getName());
                    if(resp_main.getName().compareTo('Body') == 0)
                   {
                        
                         Dom.Xmlnode getStudentProgramSummaryResponse = resp_main.getChildElement('getStudentProgramSummaryResponse', StudentProgramService);
                         System.debug('getAllStudentCoursesResponse========================>>>> '+ getStudentProgramSummaryResponse.getName());
                         List<Dom.Xmlnode> getStudentProgramSummaryResponse_childs =getStudentProgramSummaryResponse.getChildren();
                         System.debug('allnodes '+getStudentProgramSummaryResponse_childs);
                                    for(Dom.Xmlnode studentProgramSummary : getStudentProgramSummaryResponse_childs)
                                    {
                                  
                                        System.debug('=======>>>>>>>>>>>>>> node name'+studentProgramSummary.getName());
                                          //  System.debug('studentCourseList=======================>>' + node);
                                                List<Dom.Xmlnode> studentProgramSummaryItem=studentProgramSummary.getChildren();
                                                for(Dom.Xmlnode resp_itemlist:studentProgramSummaryItem)
                                                {
                                                    System.debug('Item list============>'+resp_itemlist.getName());
                                                    
                                                    if(resp_itemlist.getName()=='studentProgramSummaryItem')
                                                    {
                                                    //
                                                    //{
                                                        
                                                        responseElements responseElementsObject=new responseElements();
                                                    //System.debug('each Item============>'+resp_eachitem.getName()+':'+resp_eachitem.getText());
                                                    
                                                        
                                                         responseElementsObject.programType =  resp_itemlist.getChildElement('programType', StudentProgramService) == null? null:  resp_itemlist.getChildElement('programType',StudentProgramService).getText();
                                                         responseElementsObject.programVersion = resp_itemlist.getChildElement('programVersion', StudentProgramService) == null? null: resp_itemlist.getChildElement('programVersion',StudentProgramService).getText();
                                                         responseElementsObject.programOrga=resp_itemlist.getChildElement('programOrga', StudentProgramService) == null? null: resp_itemlist.getChildElement('programOrga',StudentProgramService).getText(); 
                                                         responseElementsObject.programGPA=resp_itemlist.getChildElement('programGPA', StudentProgramService) == null? null: resp_itemlist.getChildElement('programGPA',StudentProgramService).getText(); 
                                                         responseElementsObject.programRequiredCredits=resp_itemlist.getChildElement('programRequiredCredits', StudentProgramService) == null? null: resp_itemlist.getChildElement('programRequiredCredits',StudentProgramService).getText(); 
                                                         responseElementsObject.programCompletedCredits=resp_itemlist.getChildElement('programCompletedCredits', StudentProgramService) == null? null: resp_itemlist.getChildElement('programCompletedCredits',StudentProgramService).getText();
                                                         responseElementsObject.programRemainingCredits=resp_itemlist.getChildElement('programRemainingCredits', StudentProgramService) == null? null:resp_itemlist.getChildElement('programRemainingCredits',StudentProgramService).getText(); 
                                                         responseElementsObject.programPercentComplete=resp_itemlist.getChildElement('programPercentComplete', StudentProgramService) == null? null:resp_itemlist.getChildElement('programPercentComplete',StudentProgramService).getText(); 
                                                         responseElementsObject.programAcademicStatus=resp_itemlist.getChildElement('programAcademicStatus', StudentProgramService) == null? null: resp_itemlist.getChildElement('programAcademicStatus',StudentProgramService).getText(); 
                                                         responseElementsObject.programAcademicStatusDate=resp_itemlist.getChildElement('programAcademicStatusDate', StudentProgramService) == null? null:resp_itemlist.getChildElement('programAcademicStatusDate',StudentProgramService).getText(); 
                                                         responseElementsObject.studentAcademicStatus=resp_itemlist.getChildElement('studentAcademicStatus', StudentProgramService) == null? null:resp_itemlist.getChildElement('studentAcademicStatus',StudentProgramService).getText(); 
                                                         responseElementsObject.studentAcademicStatusDate=resp_itemlist.getChildElement('studentAcademicStatusDate', StudentProgramService) == null? null: resp_itemlist.getChildElement('studentAcademicStatusDate',StudentProgramService).getText();
                                                         responseElementsObject.programCompleteDate=resp_itemlist.getChildElement('programCompleteDate', StudentProgramService) == null? null: resp_itemlist.getChildElement('programCompleteDate',StudentProgramService).getText(); 
                                                         responseElementsObject.primaryProgram=resp_itemlist.getChildElement('primaryProgram', StudentProgramService) == null? null: resp_itemlist.getChildElement('primaryProgram',StudentProgramService).getText(); 
                                                     //  responseElementsObject.enrollmentStatusType=resp_itemlist.getChildElement('enrollmentStatusType', StudentProgramService) == null? null:resp_itemlist.getChildElement('enrollmentStatusType',StudentProgramService).getText(); 
                                                    //   responseElementsObject.withdrawalDateofDetermination=resp_itemlist.getChildElement('withdrawalDateofDetermination', StudentProgramService) == null? null: resp_itemlist.getChildElement('withdrawalDateofDetermination',StudentProgramService).getText(); 
                                                    //   responseElementsObject.withdrawalType=resp_itemlist.getChildElement('withdrawalType', StudentProgramService) == null? null: resp_itemlist.getChildElement('withdrawalType',StudentProgramService).getText();
                                                         responseElementsObject.firstName=resp_itemlist.getChildElement('firstName', StudentProgramService) == null? null:resp_itemlist.getChildElement('firstName',StudentProgramService).getText();
                                                         responseElementsObject.middleName=resp_itemlist.getChildElement('middleName', StudentProgramService) == null? null: resp_itemlist.getChildElement('middleName',StudentProgramService).getText();
                                                         responseElementsObject.lastName=resp_itemlist.getChildElement('lastName', StudentProgramService) == null? null: resp_itemlist.getChildElement('lastName',StudentProgramService).getText();
                                                         responseElementsObject.roleCodee=resp_itemlist.getChildElement('roleCodee', StudentProgramService) == null? null: resp_itemlist.getChildElement('roleCodee',StudentProgramService).getText();
                                                         responseElementsObject.emailAddres=resp_itemlist.getChildElement('emailAddres', StudentProgramService) == null? null: resp_itemlist.getChildElement('emailAddres',StudentProgramService).getText();
                                                         responseElementsObject.phoneAreaCode=resp_itemlist.getChildElement('phoneAreaCode', StudentProgramService) == null? null: resp_itemlist.getChildElement('phoneAreaCode',StudentProgramService).getText();
                                                         responseElementsObject.phoneNumber=resp_itemlist.getChildElement('phoneNumber', StudentProgramService) == null? null: resp_itemlist.getChildElement('phoneNumber',StudentProgramService).getText();
                                                         responseElementsObject.phoneExtension=resp_itemlist.getChildElement('phoneExtension', StudentProgramService) == null? null:resp_itemlist.getChildElement('phoneExtension',StudentProgramService).getText();
                                                         responseElementsObject.faxAreaCode=resp_itemlist.getChildElement('faxAreaCode', StudentProgramService) == null? null: resp_itemlist.getChildElement('faxAreaCode',StudentProgramService).getText();
                                                         responseElementsObject.faxNumber=resp_itemlist.getChildElement('faxNumber', StudentProgramService) == null? null: resp_itemlist.getChildElement('faxNumber',StudentProgramService).getText(); 
                                                         responseElementsObject.lastStudentAcademicRelatedActivity=resp_itemlist.getChildElement('lastStudentAcademicRelatedActivity', StudentProgramService) == null? null: resp_itemlist.getChildElement('lastStudentAcademicRelatedActivity',StudentProgramService).getText();
                                                         responseElementsObject.lastProgramAcademicRelatedActivity=resp_itemlist.getChildElement('lastProgramAcademicRelatedActivity', StudentProgramService) == null? null:resp_itemlist.getChildElement('lastProgramAcademicRelatedActivity',StudentProgramService).getText(); 
                                                        
                                                        
                                                        
                                                        List<Dom.Xmlnode> resp_eachitemnode=resp_itemlist.getChildren();
			                                        	
			                                        	 for(Dom.Xmlnode resp_eachitem:resp_eachitemnode)
                                                        {
                                                            if(resp_eachitem.getName()=='studentEnrollmentStatus')
                                                            {
                                                                System.debug('man-===============================manasa==============================='+resp_eachitem.getName());
                                                         		 String x1=resp_eachitem.getChildElement('enrollmentStatusType', StudentProgramService) == null? null:resp_eachitem.getChildElement('enrollmentStatusType',StudentProgramService).getText(); 
		                                                         String y1=resp_eachitem.getChildElement('withdrawalDateofDetermination', StudentProgramService) == null? null: resp_eachitem.getChildElement('withdrawalDateofDetermination',StudentProgramService).getText(); 
		                                                         String z1=resp_eachitem.getChildElement('withdrawalType', StudentProgramService) == null? null: resp_eachitem.getChildElement('withdrawalType',StudentProgramService).getText();
                                                        			 responseElementsObject.a1=new  a(x1,y1,z1);
                                                                
                                                            }
                                                            
                                                            if(resp_eachitem.getName()=='programEnrollmentStatus')
                                                            {
                                                                System.debug('man-===============================manasa==============================='+resp_eachitem.getName());
		                                                         String x1=resp_eachitem.getChildElement('enrollmentStatusType', StudentProgramService) == null? null:resp_eachitem.getChildElement('enrollmentStatusType',StudentProgramService).getText(); 
		                                                         String y1=resp_eachitem.getChildElement('withdrawalDateofDetermination',StudentProgramService) == null? null: resp_eachitem.getChildElement('withdrawalDateofDetermination',StudentProgramService).getText(); 
		                                                         String z1=resp_eachitem.getChildElement('withdrawalType', StudentProgramService) == null? null: resp_eachitem.getChildElement('withdrawalType',StudentProgramService).getText();
                                                        			 responseElementsObject.a2=new  a(x1,y1,z1);
                                                                
                                                            }
                                                            
                                                            if(resp_eachitem.getName()=='advisordetails')
                                                            {
                                                                responseElementsObject.firstName=resp_eachitem.getChildElement('firstName', StudentProgramService) == null? null:resp_eachitem.getChildElement('firstName',StudentProgramService).getText();
                                                         responseElementsObject.middleName=resp_eachitem.getChildElement('middleName', StudentProgramService) == null? null: resp_eachitem.getChildElement('middleName',StudentProgramService).getText();
                                                         responseElementsObject.lastName=resp_eachitem.getChildElement('lastName',StudentProgramService) == null? null: resp_eachitem.getChildElement('lastName',StudentProgramService).getText();
                                                         responseElementsObject.roleCodee=resp_eachitem.getChildElement('roleCodee', StudentProgramService) == null? null: resp_eachitem.getChildElement('roleCodee',StudentProgramService).getText();
                                                         responseElementsObject.emailAddres=resp_eachitem.getChildElement('emailAddres',StudentProgramService) == null? null: resp_eachitem.getChildElement('emailAddres',StudentProgramService).getText();
                                                         responseElementsObject.phoneAreaCode=resp_eachitem.getChildElement('phoneAreaCode', StudentProgramService) == null? null: resp_eachitem.getChildElement('phoneAreaCode',StudentProgramService).getText();
                                                         responseElementsObject.phoneNumber=resp_eachitem.getChildElement('phoneNumber',StudentProgramService) == null? null: resp_eachitem.getChildElement('phoneNumber',StudentProgramService).getText();
                                                         responseElementsObject.phoneExtension=resp_eachitem.getChildElement('phoneExtension', StudentProgramService) == null? null:resp_eachitem.getChildElement('phoneExtension',StudentProgramService).getText();
                                                         responseElementsObject.faxAreaCode=resp_eachitem.getChildElement('faxAreaCode', StudentProgramService) == null? null: resp_eachitem.getChildElement('faxAreaCode',StudentProgramService).getText();
                                                         responseElementsObject.faxNumber=resp_eachitem.getChildElement('faxNumber', StudentProgramService) == null? null: resp_eachitem.getChildElement('faxNumber',StudentProgramService).getText(); 
                                                        
                                                                
                                                            }
                                                            
                                                            
                                                            
                                                            
                                                        }
                                                        
                                                        
                                                        responseList_list.add(responseElementsObject);
                                                        
                                                        
                                                        
                                                        
                                                
                                                    
                                                    
                                                        }
                                                    
                                                    
                                                            
                                                    //}
                                                }
                                                    
                                            
                                   }
                                 
                     }
                         
                   
            }
            
            return responseList_list;
      
        }
        
    
    
    
    
    public class CourseDetailsDataMembers{
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
    
     public class responseElements
        {
            
            public String programType{get;set;}
            public String programVersion{get;set;}
            public String programOrga{get;set;} 
            public String programGPA{get;set;} 
            public String programRequiredCredits{get;set;} 
            public String programCompletedCredits{get;set;} 
            public String programRemainingCredits{get;set;} 
            public String programPercentComplete{get;set;} 
            public String programAcademicStatus{get;set;} 
            public String programAcademicStatusDate{get;set;} 
            public String studentAcademicStatus{get;set;} 
            public String studentAcademicStatusDate{get;set;} 
            public String programCompleteDate{get;set;} 
            public String primaryProgram{get;set;} 
            //-------------------------------------------------------------
          /*  public String enrollmentStatusType{get;set;} 
            public String withdrawalDateofDetermination{get;set;} 
            public String withdrawalType{get;set;}
            
            /*public String programEnrollmentStatusType{get;set;} 
            public String programWithdrawalDateofDetermination{get;set;} 
            public String programWithdrawalType{get;set;}*/
           //------------------------------------------------------------------ 
            public a a1{set;get;}
            public a a2{set;get;}
            
            public String firstName{get;set;}
            public String middleName{get;set;}
            public String lastName{get;set;}
            public String roleCodee{get;set;}
            public String emailAddres{get;set;}
            public String phoneAreaCode{get;set;}
            public String phoneNumber{get;set;}
            public String phoneExtension{get;set;}
            public String faxAreaCode{get;set;}
            public String faxNumber{get;set;} 
            public String lastStudentAcademicRelatedActivity{get;set;}
            public String lastProgramAcademicRelatedActivity{get;set;}
            //public String faxNumber{get;set;}
            
        }
        
            
        public class a
        {
        	public String EnrollmentStatusType{get;set;} 
            public String WithdrawalDateofDetermination{get;set;} 
            public String WithdrawalType{get;set;}
            a(String x, string y ,string z)
            {
            	EnrollmentStatusType=x;
            	WithdrawalDateofDetermination=y;
            	WithdrawalType=z;
            	
            	
            }
        }
     
            
 	
}