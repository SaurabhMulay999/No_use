public class ExceptBulk
{
    public static void insertbulkrecords()
  {
      List<Lead> mylead =new List<Lead>
     {
          new  Lead( firstname='A' ,lastname='a',company='TCS',status='Working-Contacted'),
          new  Lead( firstname='B' ,lastname='b',company='HCL',status='Working-Contacted'),
          new  Lead( firstname='C' ,lastname='c',company='ACCENTURE',status='Working-Contacted'),
          new  Lead( firstname='D' ,lastname='d',company='WIPRO',status='Working-Contacted'),
          new  Lead()
     };
      database.Saveresult[] result = database.insert(mylead,false);

       for( database.Saveresult ptr :  result)
       {
     
       if(ptr.isSuccess())
       {   
        System.debug('Record Created with Id'+ ptr.getId());
       }
       else
          {
             database.Error[] errors = ptr.geterrors();
              for(database.Error err : errors)
              {
                  System.debug('The errors are'+ ptr.getErrors());
              }
          }
      }
  }
}