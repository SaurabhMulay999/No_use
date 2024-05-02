public with sharing class cls {
    @AuraEnabled(cacheable=true)
    public static String simulateError() {
           AuraHandledException exc = new AuraHandledException(
                'Simple error message: ' + String.valueOf(DateTime.now())
            );
            throw exc;
    }
}