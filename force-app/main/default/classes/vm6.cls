public class vm6 {
    
    list<Position__c> poslist=[select Name, Department__c,Status__c from Position__c where Department__c='IT'];
    
    public list<Position__c> getposlist()
    {
        
        return poslist;
    }
}