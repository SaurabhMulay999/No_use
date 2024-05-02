//Generated for Decodeforce programming test
public class caseTriggerHandler{

	public static void afterInsert(){

		List<Case> newCases = Trigger.new;
        set<id> vis=new set<id>();
		/* Write your logic below */
        map<id,Integer> mpp=new map<id,Integer>();
        for(case c: newCases){
            if(mpp.containsKey(c.accountid)){
                mpp.put(c.accountid, mpp.get(c.accountid)+1);
            }
            else mpp.put(c.accountid,1);
        }
        list<sobject> lst=new list<sobject>();
        for(case c: newCases){
            if(c.accountid!=NULL){
                if(mpp.get(c.accountid) >3 && !vis.contains(c.accountid)){
                    lst.add(new Task(whatid=c.accountid,priority='High',status='New'));
                    vis.add(c.accountid);
                }
            }
        }

        insert lst;

	
	}
}