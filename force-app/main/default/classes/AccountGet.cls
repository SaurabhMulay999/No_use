@RestResource(urlMapping='/v4/account/*')
global class AccountGet {
    
    @httpGet
    global static AccountWrapper getAccountInfo(){
        RestRequest res=Restcontext.request;
        string resp=res.requestURI; //here u will get informatted manner a request URI
        List<string> s=resp.split('/');
        
        string accId=s[s.size()-1];
        system.debug(accId);
        
        //Now just query this account iD
        Account record=[select Id,Name from Account where id=:accID];
        AccountWrapper acc=new AccountWrapper();
        
        acc.accInfo=record;
        
        list<contact> l=[select id, FirstName from contact where id=:accID];
        
        acc.l=l;
        return acc;
        
    }

}