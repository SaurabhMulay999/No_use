//Generated for Decodeforce programming test
public class leadTriggerHandler{

	public static void beforeInsert(){
		List<Lead> newLeads = Trigger.new;
		/* Write your logic below */
        for(lead l:newLeads){
            if(l.company=='' || l.company==NULL)l.company='TBA';
        }
	}
}