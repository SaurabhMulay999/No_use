public class QueryContact {
    public static Id getContactID(String lastName, String title) {
      try {
        Contact myContact = Database.query(
          'SELECT ID FROM Contact WHERE lastName = :lastName AND title = :title LIMIT 1'
        );
        return myContact.Id;
      } catch (Exception ex) {
        return null;
      }
    }
    public static Id getContactIDWithBinds(Map<String, Object> bindVars) {
       string query='select id from contact where lastName= :lastName and Title =:title Limit 1';
        list<contact> contacts=Database.queryWithBinds(query,bindVars,AccessLevel.USER_MODE);
        if(contacts !=NULL && !contacts.isEmpty()){
            return contacts[0].id;
        }else return null;
      
      }
  }