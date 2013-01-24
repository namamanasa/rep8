public with sharing class ProcessXML{
        public static void parsingMethod(String response){
                String irn, classRostNum, courseOfferingNum, courseID, courseTitle, grade, officialStartDate, officialEndDate;
                String programOrga, scheduledOrga, courseCreditEarned, courseCredit, courseStatusType, resourceFlag, isplayDiscussionLinkFlag;
                String classroomVersion, groupID, courseOfferingType, unitType, numOfUnits, aznaID, deadDate, heldGradeReason;
                String appliedByAudit, instructorIRN, instructorFirstName, instructorLastName, addressLineOne, addressLineTwo;
                String addressLineThree, addressLineFour, city, state, postalCode, country;
                Dom.Document doc = new Dom.Document();
        doc.load(response);
        dom.XmlNode root = doc.getRootElement();
        System.debug('======>>>>>>>>>>root name'+ root.getName());
        List<dom.Xmlnode> childs = root.getChildren();
        for(Dom.Xmlnode main : childs){
                if(main.getName() == 'Body'){
                        System.debug('=======>>>>>>>>>>>>>> in body');
                        Dom.Xmlnode inter = main.getChildElement('getAllStudentCoursesResponse', null);
                        System.debug('=======>>>>>>>>>>>>>> '+main.getName());
                        Dom.Xmlnode courses = inter.getChildElement('studentCourseList', null);
                        Dom.Xmlnode item = courses.getChildElement('studentCourseItem', null);
                        List<Dom.Xmlnode> allNodes = item.getChildren();
                        for(Dom.Xmlnode node : allNodes){
                                System.debug('=======>>>>>>>>>>>>>> in body:allNodes');
                                System.debug('=======>>>>>>>>>>>>>> node name'+node.getName());
                                if(node.getName() == 'studentCourseItem'){
                                        System.debug('=======>>>>>>>>>>>>>> in loop and if');
                                        irn=node.getChildElement('irn', null) == null?null:node.getChildElement('irn', null).getText();
                                        classRostNum=node.getChildElement('classRostNum', 'stud') == null?null:node.getChildElement('classRostNum', 'stud').getText();
                                        courseOfferingNum=node.getChildElement('courseOfferingNum', 'stud') == null?null:node.getChildElement('courseOfferingNum', 'stud').getText();
                                        courseID=node.getChildElement('courseID', 'stud') == null?null:node.getChildElement('courseID', 'stud').getText();
                                        courseTitle=node.getChildElement('courseTitle', 'stud') == null?null:node.getChildElement('courseTitle', 'stud').getText();
                                        grade=node.getChildElement('grade', 'stud') == null?null:node.getChildElement('grade', 'stud').getText();
                                        officialStartDate=node.getChildElement('officialStartDate', 'stud') == null?null:node.getChildElement('officialStartDate', 'stud').getText();
                                        officialEndDate=node.getChildElement('officialEndDate', 'stud') == null?null:node.getChildElement('officialEndDate', 'stud').getText();
                                }
                        }
                }
               
        }
        System.debug('==='+irn+'==='+classRostNum+'==='+courseOfferingNum+'==='+courseID+'==='+courseTitle+'==='+grade+'==='+officialStartDate+'==='+officialEndDate);
        }
}