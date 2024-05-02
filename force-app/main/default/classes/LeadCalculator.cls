public class LeadCalculator {
    public static integer countLead(){
        
        List<Lead> c=new List<Lead>([Select Id, Name from Lead]);
        return c.size();
    }
}