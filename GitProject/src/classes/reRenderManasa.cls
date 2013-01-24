public with sharing class reRenderManasa
{   
    public Boolean first{get; set;}
    public reRenderManasa()
    {
        first=false;
    }
     public void save1() {
         first = true;
     }
      public void save2() {
         first = false;
     }

   
   
}