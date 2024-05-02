@istest
public class LeadProcessorTest {
    

    @istest public static void record()
    {
        integer i=0;
        List<Lead> L=new List<Lead>();
        for(i=0;i<200;i++)
        {
            Lead L1=new Lead(LastName='P',Company='FAcc+' );
            L.add(L1);
        }
        insert L;
        
        Test.startTest();
        LeadProcessor low=new LeadProcessor();
        database.executeBatch(low);
        Test.stopTest();
        
    }

}