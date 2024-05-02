public class updatePos {
    public static void Upd()
    {
        position__c[] p=new position__c[]{};
        p =[select Name, status__c from position__c where status__c='open'];
        //p.Name='Oiw';
       // p.Status__c='open';
       // p.HR__c='0055g00000CXIcpAAH';
        for(integer i=0;i<p.size();i++)
        {
            if(p[i].Status__c=='open')
        	{
          		p[i].Salary__c=80000;
        	}
        }
        
        update p;
        //system.debug(p);
        //Q2
        p=[select Name, status__c from position__c where status__c='closed' ];
        for(integer j=0; j<p.size();j++)
        {
            
       
        	if(p[j].Status__c=='closed')
        	{
            	delete p[j];
        	}
        }
        
        //Q3
        p=[select Name, status__c, salary__c,HR__c from position__c where name='java'];
        integer k=p.size()-1;
        while(k>=0)
        {
            if(p[k].Name=='Java')
            {
               p[k].salary__c=70000;
               p[k].HR__c='0055g00000CXIcpAAH';
            }
            k--;
           
        }
       
        update p;
        system.debug('The record'+ p);
        
    }

}