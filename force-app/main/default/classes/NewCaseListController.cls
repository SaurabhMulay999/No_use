public class NewCaseListController {
	public list<case> getNewCases()
	{
        list<case> c= new list<case>();
        c.addAll([select id,casenumber from case where status='new' and id!=null and casenumber!=null ]);
        return c;
        
    }
   
}