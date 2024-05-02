public class Showdetails {
    
    @auraEnabled
    public static List<wrap> getaccount()
    {
        wrap w=new wrap();
        List<wrap> lst=new List<wrap>();
        for(Account a:[select Id, Name, Phone, Industry from Account limit 10])
        {
            w.Name=a.Name;
            w.Phone=a.Phone;
            w.Industry=a.Industry;
            lst.add(w);
            
        }
        return lst;
    }
    
    @auraEnabled
    public static List<wrap> getcontact()
    {  wrap w=new wrap();
        List<wrap> lst=new List<wrap>();
        for(Contact a:[select Id, LastName, Email from Contact limit 10])
        {
            w.LastName=a.LastName;
            w.Email=a.Email;
            lst.add(w);
            
        }
        return lst;
    }
    public class wrap{
        @auraEnabled public String Name;
        @auraEnabled public String Phone;
        @auraEnabled public String Industry;
        @auraEnabled public String LastName;
        @auraEnabled public String Email;
        @auraEnabled public String status;
        
    }

}