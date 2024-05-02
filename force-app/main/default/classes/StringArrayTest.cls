public class StringArrayTest {
    integer n;
  

    
    public static list<string> generateStringArray(integer n)
    {
        list<string> arr=new list<string>();
        
        for(integer j=0;j<n;j++)
        {
            arr.add('Test ' +j);
            system.debug(arr[j]);
        }
        return arr;
    }

}