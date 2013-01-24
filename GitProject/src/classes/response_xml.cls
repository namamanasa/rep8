public with sharing class response_xml
 {
 	public List<responseElements> book{set;get;}
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
                  '<stud:enrollmentStatusType>Withdrawn_manasa</stud:enrollmentStatusType>' +
                  '<stud:withdrawalDateofDetermination>2012-01-27T00:00:00.000-07:00</stud:withdrawalDateofDetermination>' +
                  '<stud:withdrawalType>Unofficial Withdrawal_manasa</stud:withdrawalType>' +
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
		
 		'</stud:advisordetails>	' +




               '<stud:lastStudentAcademicRelatedActivity>1996-03-14T00:00:00.000-07:00</stud:lastStudentAcademicRelatedActivity>' +
               '<stud:lastProgramAcademicRelatedActivity>2012-01-03T00:00:00.000-07:00</stud:lastProgramAcademicRelatedActivity>' +
            '</stud:studentProgramSummaryItem>' +
         '</stud:studentProgramSummary>'+ 
      '</stud:getStudentProgramSummaryResponse>' +
   '</soapenv:Body>' +
'</soapenv:Envelope>';

Public response_xml()
{
		 book=new List<responseElements>();
		 book=soapResponseParsing(response2);
}
    
    
  public List<responseElements> soapResponseParsing(String soap_response)
	{
		List<responseElements> book_list=new List<responseElements>();
		
		  responseElements bv=new responseElements();
		
              
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
	                	
	                     Dom.Xmlnode getStudentProgramSummaryResponse = resp_main.getChildElement('getStudentProgramSummaryResponse', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService');
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
		                                        		
		                                        		//responseElements bv=new responseElements();
		                                        	//System.debug('each Item============>'+resp_eachitem.getName()+':'+resp_eachitem.getText());
		                                        	
			                                        	
			                                        	 bv.programType =  resp_itemlist.getChildElement('programType', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null:  resp_itemlist.getChildElement('programType','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText();
			                                        	 bv.programVersion = resp_itemlist.getChildElement('programVersion', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_itemlist.getChildElement('programVersion','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText();
			                                        	System.debug( '=========================>manasa=====================>'+bv.programVersion);
											       		 bv.programOrga=resp_itemlist.getChildElement('programOrga', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_itemlist.getChildElement('programOrga','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText(); 
											        	 bv.programGPA=resp_itemlist.getChildElement('programGPA', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_itemlist.getChildElement('programGPA','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText(); 
											        	 bv.programRequiredCredits=resp_itemlist.getChildElement('programRequiredCredits', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_itemlist.getChildElement('programRequiredCredits','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText(); 
											        	 bv.programCompletedCredits=resp_itemlist.getChildElement('programCompletedCredits', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_itemlist.getChildElement('programCompletedCredits','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText();
											        	 bv.programRemainingCredits=resp_itemlist.getChildElement('programRemainingCredits', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null:resp_itemlist.getChildElement('programRemainingCredits','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText(); 
											        	 bv.programPercentComplete=resp_itemlist.getChildElement('programPercentComplete', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null:resp_itemlist.getChildElement('programPercentComplete','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText(); 
											        	 bv.programAcademicStatus=resp_itemlist.getChildElement('programAcademicStatus', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_itemlist.getChildElement('programAcademicStatus','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText(); 
											        	 bv.programAcademicStatusDate=resp_itemlist.getChildElement('programAcademicStatusDate', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null:resp_itemlist.getChildElement('programAcademicStatusDate','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText(); 
											        	 bv.studentAcademicStatus=resp_itemlist.getChildElement('studentAcademicStatus', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null:resp_itemlist.getChildElement('studentAcademicStatus','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText(); 
											        	 bv.studentAcademicStatusDate=resp_itemlist.getChildElement('studentAcademicStatusDate', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_itemlist.getChildElement('studentAcademicStatusDate','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText();
											        	 bv.programCompleteDate=resp_itemlist.getChildElement('programCompleteDate', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_itemlist.getChildElement('programCompleteDate','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText(); 
											        	 bv.primaryProgram=resp_itemlist.getChildElement('primaryProgram', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_itemlist.getChildElement('primaryProgram','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText(); 
											         	
											         	// bv.enrollmentStatusType=resp_itemlist.getChildElement('enrollmentStatusType', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null:resp_itemlist.getChildElement('enrollmentStatusType','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText(); 
											       		// bv.withdrawalDateofDetermination=resp_itemlist.getChildElement('withdrawalDateofDetermination', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_itemlist.getChildElement('withdrawalDateofDetermination','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText(); 
											        	// bv.withdrawalType=resp_itemlist.getChildElement('withdrawalType', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_itemlist.getChildElement('withdrawalType','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText();
											        
											        //	 bv.enrollmentStatusType=resp_itemlist.getChildElement('enrollmentStatusType', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null:resp_itemlist.getChildElement('enrollmentStatusType','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText(); 
											        //	 bv.withdrawalDateofDetermination=resp_itemlist.getChildElement('withdrawalDateofDetermination', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_itemlist.getChildElement('withdrawalDateofDetermination','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText(); 
											        //	 bv.withdrawalType=resp_itemlist.getChildElement('withdrawalType', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_itemlist.getChildElement('withdrawalType','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText();
											        
											        	
											        	  bv.lastStudentAcademicRelatedActivity=resp_itemlist.getChildElement('lastStudentAcademicRelatedActivity', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_itemlist.getChildElement('lastStudentAcademicRelatedActivity','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText();
											        	 bv.lastProgramAcademicRelatedActivity=resp_itemlist.getChildElement('lastProgramAcademicRelatedActivity', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null:resp_itemlist.getChildElement('lastProgramAcademicRelatedActivity','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText(); 
			                                        	
			                                        	
			                                        	
			                                        		List<Dom.Xmlnode> resp_eachitemnode=resp_itemlist.getChildren();
			                                        	
			                                        	for(Dom.Xmlnode resp_eachitem:resp_eachitemnode)
			                                        	{
			                                        		if(resp_eachitem.getName()=='studentEnrollmentStatus')
			                                        		{
			                                        			System.debug('man-===============================manasa==============================='+resp_eachitem.getName());
			                                        	 bv.enrollmentStatusType=resp_eachitem.getChildElement('enrollmentStatusType', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null:resp_eachitem.getChildElement('enrollmentStatusType','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText(); 
											        	 bv.withdrawalDateofDetermination=resp_eachitem.getChildElement('withdrawalDateofDetermination', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_eachitem.getChildElement('withdrawalDateofDetermination','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText(); 
											        	 bv.withdrawalType=resp_eachitem.getChildElement('withdrawalType', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_eachitem.getChildElement('withdrawalType','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText();
											        	
			                                        			
			                                        		}
			                                        		
			                                        		if(resp_eachitem.getName()=='programEnrollmentStatus')
			                                        		{
			                                        			System.debug('man-===============================manasa==============================='+resp_eachitem.getName());
			                                        	 bv.programEnrollmentStatusType=resp_eachitem.getChildElement('enrollmentStatusType', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null:resp_eachitem.getChildElement('enrollmentStatusType','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText(); 
											        	 bv.programWithdrawalDateofDetermination=resp_eachitem.getChildElement('withdrawalDateofDetermination', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_eachitem.getChildElement('withdrawalDateofDetermination','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText(); 
											        	 bv.programWithdrawalType=resp_eachitem.getChildElement('withdrawalType', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_eachitem.getChildElement('withdrawalType','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText();
											        	
			                                        			
			                                        		}
			                                        		
			                                        		if(resp_eachitem.getName()=='advisordetails')
			                                        		{
			                                        			bv.firstName=resp_eachitem.getChildElement('firstName', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null:resp_eachitem.getChildElement('firstName','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText();
											        	 bv.middleName=resp_eachitem.getChildElement('middleName', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_eachitem.getChildElement('middleName','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText();
											        	 bv.lastName=resp_eachitem.getChildElement('lastName', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_eachitem.getChildElement('lastName','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText();
											         	 bv.roleCodee=resp_eachitem.getChildElement('roleCodee', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_eachitem.getChildElement('roleCodee','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText();
											        	 bv.emailAddres=resp_eachitem.getChildElement('emailAddres', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_eachitem.getChildElement('emailAddres','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText();
											         	 bv.phoneAreaCode=resp_eachitem.getChildElement('phoneAreaCode', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_eachitem.getChildElement('phoneAreaCode','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText();
											        	 bv.phoneNumber=resp_eachitem.getChildElement('phoneNumber', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_eachitem.getChildElement('phoneNumber','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText();
											        	 bv.phoneExtension=resp_eachitem.getChildElement('phoneExtension', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null:resp_eachitem.getChildElement('phoneExtension','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText();
											        	 bv.faxAreaCode=resp_eachitem.getChildElement('faxAreaCode', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_eachitem.getChildElement('faxAreaCode','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText();
											        	 bv.faxNumber=resp_eachitem.getChildElement('faxNumber', 'http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService') == null? null: resp_eachitem.getChildElement('faxNumber','http://asb.apollogrp.edu/ASBService/service/Student/StudentProgramService').getText(); 
											        	
			                                        			
			                                        		}
			                                        		
			                                        		
			                                        		
			                                        		
			                                        	}
			                                        	
			                                        	
			                                        	book_list.add(bv);	  
			                                        	 
			                                        	  //	System.debug('each Item============>'+resp_eachitem.getName()+':'+resp_eachitem.getText());
			                                        	 
			                                        	
		                                        	
		                                        	
		                                        	
			                                        	}
		                                        	
		                                        	
				                                     		
		                                        	//}
		                                        }
		                                        	
		                                	
	                               }
	                             
	                 }
	                     
	               
	        }
	        
	        return book_list;
      
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
        	
        	public String enrollmentStatusType{get;set;} 
        	public String withdrawalDateofDetermination{get;set;} 
        	public String withdrawalType{get;set;}
        	
        	public String programEnrollmentStatusType{get;set;} 
        	public String programWithdrawalDateofDetermination{get;set;} 
        	public String programWithdrawalType{get;set;}
        	
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
        
      
       

}