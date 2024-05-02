public class CustomerController {
    @AuraEnabled
    public static list<customer__c> showAllcustomers1()
    {
        list<customer__c> clist=[select Id, Name, email__c, City__c from customer__c];
        return clist;
        
    }
     public static string insertNewProduct12(string cname, string ccity,  string email)
    {
        try{
            customer__c op=new customer__c(Name=cname, City__c=ccity, email__c=email);
            insert op;
            return op.id;
        }
        catch(System.DmlException ex)
        {
            return ex.getMessage();
        }
        
    }
    
    @AuraEnabled
    public static list<customer__c> createnewrecord(String stext1)
    {
        string pattern1='%'+stext1+'%';
        list<customer__c> clist1 =[select Id, Name, email__c, City__c from customer__c where Name LIKE :pattern1 ];
        return clist1;
    }

}