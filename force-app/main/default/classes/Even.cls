public class Even {
    public void findEven(){
        
    
    integer[] arr= new integer[]{1,2,3,4,5,6,7,8,9,10};
    integer n;
    for(integer i: arr)
    {
        //n=math.mod(i,2);
        n=i-(2*(i/2));
        if(n==0)
        {
            
            system.debug('The even Number: '+ i);
        }
        
    }
    }
    
}