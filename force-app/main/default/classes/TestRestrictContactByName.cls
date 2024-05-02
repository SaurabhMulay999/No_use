@istest
public class TestRestrictContactByName {
    @istest static void thetest()
    {
        Contact c1=new contact(FirstName='ronny',LastName='INVALIDNAME');
        Test.startTest();
        insert c1;
        Test.stopTest();

        
        //contact c=[select LastName from contact where LastName='INVALIDNAME'];
        

    
    }
    

}