public with sharing class xml_dummy
 {
	public static void parse(String response)
	{
              
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
		                                        	List<Dom.Xmlnode> eachitemnode=itemlist.getChildren();
		                                        	for(Dom.Xmlnode eachitem:eachitemnode)
		                                        	{
		                                        	System.debug('each Item============>'+eachitem.getName()+':'+eachitem.getText());	
		                                     
		                                        	}
		                                        }
		                                   
		                                	
	                               		}
	                             
	                 }
	                     
	               
	        }
      
        }

}