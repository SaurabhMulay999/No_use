public class DML
{

    @auraEnabled
    public static List<Account> Collect()
    {//auraedit
      return [select Id, Name,Phone, Industry from Account];
    
    }
}