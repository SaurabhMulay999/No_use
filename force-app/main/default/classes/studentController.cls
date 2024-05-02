public with sharing class studentController {


    
    @AuraEnabled (cacheable=true)
    public static list<Contact> getStudents(){

        try{

            return [select FirstName , LastName, Email, Phone from Contact];
        }
        
        catch(Exception e){
            throw new AuraHandledException(e.getMessage());



    }
    }
}