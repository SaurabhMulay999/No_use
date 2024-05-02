global class LeadProcessor implements Database.Batchable<sObject>{
    global Database.QueryLocator start(Database.BatchableContext bc) {
        return database.getQueryLocator(
            
            'SELECT ID FROM Lead'
      
        );
        
            }

  global void execute(Database.BatchableContext bc, List<Lead> L)   
  {  List<Lead> Llist = new List<Lead>();
          
      for(Lead LL: L)
      {
          LL.LeadSource='Dreamforce';
          Llist.add(LL);
      }
   update Llist;
   
      
  }
    global void finish(Database.BatchableContext bc){}
    

}