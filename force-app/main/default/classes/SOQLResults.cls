public class SOQLResults {
    public static void Q1()
    {
        Position__c pos=[select ID, Name, location__c,Department__c,status__c from Position__c where Name='CPP'];
        if(pos!=null)
        {
            system.debug('Position record is '+ pos);
        }
    }
    public static void Q2()
    {
        Position__c[] pos1=[select ID, Name, location__c,Department__c,status__c from Position__c];
        //alternative list<position__c> thevsallist =  [Query];
        
        if(!pos1.isEmpty())
        {
            for(position__c pos: pos1){
                system.debug('The records are '+ pos );
            }
            
        }
    }
    public static void Q3()
    {
        Position__c[] pos1=[select ID, Name, location__c,Department__c,status__c from Position__c where Department__c='IT'];
        //alternative list<position__c> thevsallist =  [Query];
        
        if(!pos1.isEmpty())
        {
            for(position__c pos: pos1){
                system.debug('The records are '+ pos );
            }
            
        }
        
    }
    //static SOQl query Q1,Q2,Q3,Q4
    //: operator is there 
    public static void Q4(String Dept1){
         Position__c[] pos1=[select ID, Name, location__c,Department__c,status__c from Position__c where Department__c=:Dept1];
        //alternative list<position__c> thevsallist =  [Query];
        
        if(!pos1.isEmpty())
        {
            for(position__c pos: pos1){
                system.debug('The records are '+ pos );
            }
            
        }
        
        
    }
    public static void Q5(){
         Position__c[] pos1=[select ID, Name, location__c,Department__c,status__c from Position__c LIMIT 3];
        //alternative list<position__c> thevsallist =  [Query];
        
        if(!pos1.isEmpty())
        {
            for(position__c pos: pos1){
                system.debug('The records are '+ pos );
            }
            
        }
        
    }
    
    public static void Q6(){
        map<ID,Position__c> mappositions=new map<ID, Position__c>([select ID, Name, location__c,Department__c,status__c from Position__c ALL ROWS]);
        system.debug('size '+ mappositions.size());
        if(!mappositions.isEmpty())
        {
            for(Position__c pos: mappositions.values())
            {
                system.debug('Position Record'+ pos);
            }
        }
    }
    

}