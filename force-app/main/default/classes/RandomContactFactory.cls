public class RandomContactFactory {
    public static list<contact> generateRandomContacts(integer i , string LName)
    {
        list<contact> Thecon=new list<contact>();
        for(integer j=0; j<i;j++)
        {
            contact C=new contact(FirstName='Lname123' + j+ '', lastName=Lname+j);
            Thecon.add(C);
            //system.debug('The contact name'+ Thecon[j]);
        }
        return Thecon;
    }

}