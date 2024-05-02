public class AccountProcessor {
    @future
    public static void countContacts(List<Id> accountIds)
   {
       //to bulkify we neeed  a extra list
       List<Account> Alist=new List<Account>();
       List<Account> a=[select Id, Name, (select Id from Contacts) from Account where Id IN :accountIds];
       
       for(Account acc:a)
       {
           List<Contact> cList=acc.Contacts;
           acc.Number_Of_Contacts__c=cList.size();
           Alist.add(acc);
           
            
       }
        update Alist;
       
    }

}