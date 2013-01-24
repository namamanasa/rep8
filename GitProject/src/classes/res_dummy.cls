public with sharing class res_dummy
 {
	public static void parse(String response)
	{
              
          
        Dom.Document doc = new Dom.Document();
        doc.load(response);
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
		                                        	List<Dom.Xmlnode> resp_eachitemnode=resp_itemlist.getChildren();
		                                        	for(Dom.Xmlnode resp_eachitem:resp_eachitemnode)
		                                        	{
		                                        		
		                                        		//book_var_dec bv=new book_var_dec();
		                                        	System.debug('each Item============>'+resp_eachitem.getName()+':'+resp_eachitem.getText());
		                                        	
			                                        	
				                                      	if(resp_eachitem.getName().compareTo('studentEnrollmentStatus')==0)	
				                                        	{
				                                        	
			                                        		List<Dom.Xmlnode> studentEnrollmentStatus_children=resp_eachitem.getChildren();
			                                        	//	  System.debug('=======>>>>>>>>>>>>>> -----------------------------');
			                                        		for(Dom.Xmlnode sub_details :studentEnrollmentStatus_children)
									                                {
									                              
										                                System.debug('=======>>>>>>>>>>>>>> node name'+sub_details.getName()+':'+sub_details.getText());
											                     
											                     
			                                        		
									                                }
				                                        		
				                                        	 } 
			                                        	
		                                        	
		                                        	
		                                        	
			                                        	if(resp_eachitem.getName().compareTo('programEnrollmentStatus')==0)	
			                                        	{
			                                        	
			                                        		List<Dom.Xmlnode> temp_sub=resp_eachitem.getChildren();
			                                        	//	  System.debug('=======>>>>>>>>>>>>>> -----------------------------');
			                                        		for(Dom.Xmlnode node_sub :temp_sub)
									                                {
									                              
										                                System.debug('=======>>>>>>>>>>>>>> node name'+node_sub.getName()+':'+node_sub.getText());
											                     
											                     
			                                        		
									                                }
			                                        		
			                                        		
			                                        	  }
		                                        	
		                                        	
			                                       	if(resp_eachitem.getName().compareTo('advisordetails')==0)	
			                                        	{
			                                        	
			                                        		List<Dom.Xmlnode> temp_sub3=resp_eachitem.getChildren();
			                                        	//	  System.debug('=======>>>>>>>>>>>>>> -----------------------------');
			                                        		for(Dom.Xmlnode node_sub3 :temp_sub3)
									                                {
									                              
										                                System.debug('=======>>>>>>>>>>>>>> node name'+node_sub3.getName()+':'+node_sub3.getText());
											                     
											                     
			                                        		
									                                }
			                                        		
			                                        		
			                                        	  }   
			                                        	  
			                                        	  
			                                        	  
			                                        	 
			                                        	  //	System.debug('each Item============>'+resp_eachitem.getName()+':'+resp_eachitem.getText());
			                                        	 
			                                        	
		                                        	
		                                        	
		                                        	
		                                        	
		                                        	
		                                        	
				                                     		
		                                        	}
		                                        }
		                                   
		                                	
	                               }
	                             
	                 }
	                     
	               
	        }
      
        }

}