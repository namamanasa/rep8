public with sharing class ParsingXML {
        public static void parse(String xmlResponse){          
        Dom.Document doc = new Dom.Document();
        doc.load(xmlResponse);
        dom.XmlNode root = doc.getRootElement();
        List<dom.Xmlnode> childs = root.getChildren();
        System.debug('========>>>>>>>>>>'+childs);
        for(Dom.Xmlnode node : childs){
                if(node.getName() == 'book'){
                        String name = node.getChildElement('name', null) == null?null:node.getChildElement('name', null).getText();
                        String author = node.getChildElement('author', null) == null?null:node.getChildElement('author', null).getText();
                        System.debug('=====>>>Name '+name+' =====>>>>>author '+author);
                }
        }
    }
}