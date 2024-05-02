public class customerDetails {
    @auraEnabled
    public static Account getAccount(string strIndustry)
    {
        return [select ID, Name, Phone , Industry from Account where Industry=:strIndustry limit 1];
    }
}