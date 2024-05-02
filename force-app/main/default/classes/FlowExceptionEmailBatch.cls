global class FlowExceptionEmailBatch implements Database.Batchable<sObject>,Database.stateful{
	
    list<String> lst=new list<String>();
    public void FlowExceptionEmailBatch(){
        lst.add('Name, Id\n');
    }
   
    global Database.QueryLocator start(Database.BatchableContext BC) {
        
    	
        return Database.getQueryLocator([SELECT Id, Name, CreatedDate FROM Account]);
    }

    global void execute(Database.BatchableContext BC, List<Account> scope) {
        lst.add(generateCSV(scope));
    }

    global void finish(Database.BatchableContext BC) {
        System.debug('Batch job finished successfully.'+ lst);
        sendEmail(lst);
    }

    public string generateCSV(List<Account> accountList) {
        string str='';
        for (Account acc : accountList) {
            str += acc.Name + ',' + acc.Id +'\n';
        }
        system.debug('str'+str);
        return str;
    }

    global void sendEmail(list<string>lst) {
        
        system.debug('list'+lst);
        string str='';
        for(string s:lst)str+=s;
        
        Messaging.EmailFileAttachment attachment = new Messaging.EmailFileAttachment();
        attachment.setFileName('AccountData.csv');
        
        attachment.setBody(Blob.valueOf(str));
        
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {'srbhmulay@gmail.com','chandrima.mukherjee@accenture.com'};
        mail.setToAddresses(toAddresses);
        mail.setSubject('Account Data Report');
        mail.setPlainTextBody('Please find the attached records in CSV format.');
        mail.setFileAttachments(new Messaging.EmailFileAttachment[] { attachment });

        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }
}