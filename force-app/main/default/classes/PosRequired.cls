public class PosRequired {
    public static void add()
    {
        position__c p2 =new position__c();
        Sobject s;
        p2.name='Ash';
        p2.Status__c='open';
        p2.HR__c='0055g00000CXIcpAAH';
        p2.DateClosed__c=date.newInstance(2021,03,1);
        insert p2;
        if(p2.DateClosed__c < date.today())
        {
            p2.Status__c='closed';
        }
         update p2;
        p2=[select name from position__c where name='Ash' limit 1];
        system.debug('the  udated record is '+ p2);
        
        
      
    }
 

}