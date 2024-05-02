public class ContactSearch {
     public static contact[] searchForContacts(String s, String s1)
     {
         contact[] j=new contact[]{};
         j = [select ID,Name from contact where lastname=:s and MailingPostalCode=:s1];
         //for(contact i: j)
         //{
            // system.debug(j);
         //}
         return j;
     }

}