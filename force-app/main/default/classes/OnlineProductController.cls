public class OnlineProductController {
    @AuraEnabled
    public static list<onlineProducts__c> showAllProducts()
    {
        list<OnlineProducts__c> plist =[select Name, ProductType__c, Price__c from OnlineProducts__c];
        return plist;
        //THis is a server side controller and aura enabled , we are  getting all records from the query and it returning the list
        //Liink this apex class with the component
    }
    //this method is for the new Button configaration
    @AuraEnabled
    public static string insertNewProduct(string iprodname, string itype, Integer iprice)
    {
        try{
            onlineProducts__c op=new onlineProducts__c(Name=iprodname, productType__c=itype, Price__c=iprice);
            insert op;
            return op.id;
        }
        catch(System.DmlException ex)
        {
            return ex.getMessage();
        }
        
    }

}