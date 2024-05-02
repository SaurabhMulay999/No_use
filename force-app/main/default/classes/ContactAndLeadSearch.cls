public class ContactAndLeadSearch {
    
    public static  List<List< SObject>> searchContactsAndLeads(String s)
    {
        List<List<sObject>> searchList=[FIND :s IN ALL FIELDS RETURNING lead, contact];
        //system.debug('The list view'+ searchList[0]);
        return searchList;
        																																																																				
    }

}