public with sharing class add 
{

    public PageReference add() {
        return null;
    }

 
 public Integer sums{get;set;}
 public String a2 { get; set; }
 public String a1 { get; set; }

   public add()
   {
		
   }
    public Integer addsum() 
    {   
    Integer x=Integer.valueOf(a1);
    Integer y=Integer.valueOf(a2);   
    sums=x+y; 
    return sums;
    
    }

 }