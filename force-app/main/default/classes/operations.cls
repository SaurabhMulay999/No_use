public class operations {
    @auraEnabled
    public static String Create(Products__c p)
    {
        try{
            insert p;
            return p.Id;
        }
        catch(exception e)
        {
            return e.getMessage();
        }
    }
    @auraEnabled
    public static Products__c deleteprd(Products__c p)
    {
        delete p;
        return p;
    }
    @auraEnabled 
    public static List<Products__c> getprd(String typi)
    {
        list<Products__c> l=[select Id,Name,Discription__c,Type__c from Products__c where Type__c=:typi];
        return l;
        
        
    }
    

}