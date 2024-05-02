public class Apex_Class {
    @auraEnabled
    public static string SaveRecord(Contact c)
    {
        try{
            insert c;
            return 'Ok';
        }
        catch(exception e)
        {
            return e.getMessage();
        }
    }
    @auraEnabled
    public static list<Contact> getTheRecord()
    {
        return [select Id, Name,Email,LastName from Contact order by Name limit 10];
        
    }

}