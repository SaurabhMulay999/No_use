@istest
public class TestVerifyDate {
    
    @istest static void check1()
    {
        //date2 is within 30 days of day 1
        Date d1=VerifyDate.CheckDates(Date.newInstance(2020,3,1),Date.newInstance(2020,3,21));
        system.assertEquals(Date.newInstance(2020,3,21), d1);
        
        
    }
    @istest static void check2()
    {
        Date d2=VerifyDate.CheckDates(Date.newInstance(2020,3,1),Date.newInstance(2020,5,21));
        system.assertEquals(Date.newInstance(2020,3,31),d2);
    }
}