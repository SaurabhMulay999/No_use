@IsTest
private class AccountProcessorTest {
  @IsTest
  private static void testcountcontacts() {
      
     Account a=new Account(Name='Saurabh');
      insert a;
      
     	List<Id> aId=new List<Id>();
      
      Contact c=new Contact(FirstName='ss',LastName='ss',AccountId=a.Id);
      insert c;
      Contact c1=new Contact(FirstName='SSS', LastName='SSSS',AccountId=a.Id);
      insert c1;
      aId.add(a.Id);
      
  
    Test.startTest();
      
     AccountProcessor.countContacts(aId);
      
    Test.stopTest();
    
  }
}