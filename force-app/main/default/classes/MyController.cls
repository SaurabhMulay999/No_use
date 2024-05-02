public class MyController {
    @auraEnabled
    public static string createFormRecord12(Integer Manager,Integer Technician, String Measure,String Business, String Safety ){
        try{
            Form__c f=new Form__c(Numberoftechnician__c=Technician,Number_Of_Managers__c=Manager,	Business_These_Days__c=Business,Safety__c=Safety);
            insert f;
            return f.id;
        }
        catch(Exception e){
            //alert(e.getMessage());
            return e.getMessage();
        }
        
        
    }

}