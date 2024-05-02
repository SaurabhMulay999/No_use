public with sharing class TEST {
    @AuraEnabled(cacheable=true)
    public static void test1(String d) {
        DateTime d1=DateTime.parse(d);

        system.debug(d1);

    }
}