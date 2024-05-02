public class AddPrimaryContact implements Queueable {
    public String S_state;
    public Contact c;
    
    public AddPrimaryContact(Contact c1,String S1_state)
    {
        this.c=c1;
        this.S_state=S1_state;
        
    }
    
    public void execute(QueueableContext context){
        List<Account> acc=[select Id,Name,(select ID,FirstName,LastName from Contacts) from Account where BillingState= :S_state LIMIT 200];
        List<Contact> CLIST=new List<Contact>();
        for(Account a1:acc)
        {
            Contact con=c.clone();
            con.AccountId=a1.Id;
            CLIST.add(con);
            
        }
        if(CLIST.size()>0)
        {
            insert CLIST;
            
        }
    }

}