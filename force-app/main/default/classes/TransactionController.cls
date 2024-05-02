public class TransactionController {
    @AuraEnabled
    public static list<Transaction__c> showLatestTransaction(){
        
        list<Transaction__c> tlist=[select Id, Name, OnlineProducts__r.Name, Customer__r.Name, quantity__c from Transaction__c order by CreatedDate desc];
        return tlist;
    }
    
    @AuraEnabled
    public static list<Transaction__c> searchByProductOrCustomer(string stext)
    {
        string spattern= '%'+stext+'%';
        list<Transaction__c> tlist=[select Id, Name, OnlineProducts__r.Name,customer__r.Name, quantity__c from Transaction__c where OnlineProducts__r.Name LIKE :spattern or 
                                  customer__r.Name LIKE :spattern];
        return tlist;
    }
}