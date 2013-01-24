public with sharing class book_xml {
     public String name{get;set;}  
     public String author{get;set;} 
     public String id{get;set;} 
      public String cname{get;set;}
       public String cost{get;set;}    
    
    public List<Innerc> getparse(){  
        List<Innerc> resultsObj = new List<Innerc>();  
        String xmlResponse='<books><book><name>Java</name><author>Bala</author><id>1</id></book><book><name>Apex</name><author>Kumar</author><id>2</id></book><book><name>C++</name><author>Gurua</author><id>3</id></book></books>';   
        Dom.Document doc = new Dom.Document();
        doc.load(xmlResponse);
        dom.XmlNode root = doc.getRootElement(); 
        system.debug(root);
        dom.Xmlnode[] childNodes = root.getChildElements();  
         for(Dom.Xmlnode node : childNodes){
            if(node.getName() == 'book'){
                name = node.getChildElement('name', null) == null? null: node.getChildElement('name',null).getText();
                author = node.getChildElement('author', null) == null? null: node.getChildElement('author',null).getText();
                id = node.getChildElement('id', null) == null? null: node.getChildElement('id',null).getText();
                System.debug(name+'------'+author+'---------------'+id);
                resultsObj.add(new Innerc(name, author, id));
            }
         }
         return resultsObj;
    }
    
    
      
    public List<choc_Innerc> getchoc_parse(){  
        List<choc_Innerc> resultsObj1 = new List<choc_Innerc>();  
        String xmlResponse1='<choclates><choclate><cname>Munch</cname><cost>10</cost></choclate><choclate><cname>Dairy Milk</cname><cost>50</cost></choclate></choclates>';   
        Dom.Document doc1 = new Dom.Document();
        doc1.load(xmlResponse1);
        dom.XmlNode choc_root = doc1.getRootElement(); 
        system.debug(choc_root);
        dom.Xmlnode[] choc_childNodes = choc_root.getChildElements();  
         for(Dom.Xmlnode choc_node : choc_childNodes){
            if(choc_node.getName() == 'choclate'){
                cname = choc_node.getChildElement('cname', null) == null? null: choc_node.getChildElement('cname',null).getText();
                System.debug(cname);
                cost= choc_node.getChildElement('cost', null) == null? null:choc_node.getChildElement('cost',null).getText();
                //id = node.getChildElement('id', null) == null? null: node.getChildElement('id',null).getText();
                System.debug(name+'------'+cost+'---------------');
                resultsObj1.add(new choc_Innerc(cname,cost));
            }
         }
         return resultsObj1;
    }
    
     
    public class Innerc{
        public String name{get;set;}
        public String author{get;set;}
        public String id{get;set;}
        public Innerc(String n, String auth, String i){
            name=n;
            author=auth;
            id=i;
        }
    }
    
    
    public class choc_Innerc{
        public String cname{get;set;}
        public String cost{get;set;}
        
        public choc_Innerc(String n, String c){
            cname=n;
            cost=c;
            
        }
    } 
}