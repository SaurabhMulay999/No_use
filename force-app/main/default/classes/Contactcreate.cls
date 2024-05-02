public class Contactcreate {
    
    
    @auraEnabled 
    public static string create(contact c1)
    {
        try{
            insert c1;
            return c1.Id;
        }
        catch(exception e)
        {
            return e.getMessage();
        }
    }
  
}