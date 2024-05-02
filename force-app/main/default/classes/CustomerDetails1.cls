public class CustomerDetails1 {
    
    @auraEnabled
    public static string getRecord(Contact c)
    {
        //ss
        try{
            insert c;
            return c.Id;
            
        }
        catch(exception e)
        {
            return e.getMessage();
        }
    }

}