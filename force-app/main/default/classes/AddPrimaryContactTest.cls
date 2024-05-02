@istest
public class AddPrimaryContactTest {
    @istest
    static void setup()
    {
        List<Account> L=new List<Account>();
        for(integer i=0;i<50;i++)
        {
            L.add((new Account(Name='ACC'+i , BillingState='CA')));
        }
        for(integer i=0;i<50;i++)
        {
            L.add((new Account(Name='ACC'+i , BillingState='NY')));
        }
        insert L;
        Contact c=new Contact(FirstName='D',LastName='Da');
        insert c;
        
        AddPrimaryContact add1=new AddPrimaryContact(c,'CA');
        Test.startTest();
        System.enqueueJob(add1);
        Test.stopTest();
        System.assertEquals(50,[select count() from Contact where accountID in (select Id from Account where BillingState='CA')]);
    }
}