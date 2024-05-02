public class Listv {
    public void findavg()
    {
        list<integer> arr= new list<integer>{1,2,3,4,5,6,7,8,9,10};
        integer n=arr.size();
        integer sum=0;
        integer avg=0;
        
        for(integer a: arr)
        {
            sum+=a;
            
        }
        avg=sum/n;
        system.debug('The average is: '+ avg);
        
        
    }
}