public with sharing class DependentPicklistExample
{

    List<SelectOption> stateoptions = new List<SelectOption>();
    
    Map<String,List<String>> statesMap=new Map<String ,List<String>>();
    
        public DependentPicklistExample ()
        {
                       
            //Aus
            List<string> AusStateList = new List<string>();
            //Ind
            List<string> IndStateList=new List<string>();
            //US
            List<string> AmerStateList=new List<string>();
            
            //Aus
            AusStateList.add('Burgenland');
            AusStateList.add('Carinthia');
            AusStateList.add('Lower Austria');
            
            //Ind
            IndStateList.add('Andhra Pradesh');
            IndStateList.add('Tamil Nadu');
            IndStateList.add('Karnataka');
            
            //US
            AmerStateList.add('Califonia');
            AmerStateList.add('Newyork');
            AmerStateList.add('Texas');
            
            statesMap.put('Australia',AusStateList);
            statesMap.put('India',IndStateList);
            statesMap.put('America',AmerStateList);  
            
        }
        
        public String CountryValue
        {
            get;set;
        }
        
        public List<SelectOption> getCountrylist()
        {
            List<SelectOption> options = new List<SelectOption>();
                options.add(new SelectOption('--None--','--None--'));
                options.add(new SelectOption('Australia','Australia'));
                options.add(new SelectOption('India','India'));
                options.add(new SelectOption('America','America'));
            return options;
        }
        
        public String StatesValue
        {
            get;set;
        }       
    
        public List<SelectOption> getStateslist()
        {

                if(stateoptions.size()==0)
                {
                    stateoptions.add(new SelectOption('--None--','--None--'));
                }
            return stateoptions;
        }        
    
        public PageReference CallStates()
        {
            stateoptions.clear();
            if(CountryValue=='Australia')
            {
                List<String> aus =statesMap.get('Australia');
                    for(String accloop:aus)
                    {
                        stateoptions.add(new SelectOption(accloop,accloop));
                    }    
            }
            if(CountryValue=='India')
            {
                List<String> ind=statesMap.get('India');
                    for(String indloop:ind)
                    {
                        stateoptions.add(new SelectOption(indloop,indloop));
                    }
            }
            if(CountryValue=='America')
            {
                List<String> us=statesMap.get('America');
                    for(String usloop:us)
                    {
                        stateoptions.add(new SelectOption('none',usloop));
                    }
             }
        return null;
        }
}