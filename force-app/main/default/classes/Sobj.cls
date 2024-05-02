public class Sobj {
    public static void show()
        
    {
        account a=[select name from account where name='HCL'];
        delete a;
    }
    public static void undel()
    {
        Sobject a=[select name from Account where name='HCL' ALL ROWS];
        undelete a;
    }
}