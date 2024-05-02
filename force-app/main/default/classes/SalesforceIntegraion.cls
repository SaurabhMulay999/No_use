@RestResource(urlMapping='/v56/Account/*')
global class SalesforceIntegraion {
  //create a Method first
  
  @httpGet 
  global static accWrapper GetRecord(){
    	RestRequest res=RestContext.request;
    	string requestStr=res.requestURI;
    	List<string> s=requestStr.split('/');
      	//last string or word is account id here
      	string accID=s[s.size( )-1];
      	
      	//find the record 
      	Account a=[select Id,Name from Account where id=:accID];
      	List<contact> L=[select Id,FirstName from Contact where accountid=:accID];
      	accWrapper w=new accWrapper();
     	 w.acc=a;
     	 w.c=L;
      return w;
                        
    
   }
    
    //Write a post method
    //
    @httpPost
    global static Account CreateRecord(string accName,string Industry){
        Account a=new Account(name=accName,Industry=Industry);
        
        insert a;
        
        //lets return it also
        return a;
    }
    
    
    //write a delete Method
    //
    @httpDelete
    global static void DeleteAccount(){
        RestRequest res=RestContext.request;
    	string requestStr=res.requestURI;
    	List<string> s=requestStr.split('/');
      	//last string or word is account id here
      	string accID=s[s.size( )-1];
      	
        //we have got the account id now just find the record and delet it
        
        Account a=[select ID,Name from Account where id=:accID];
        
        if(a!=NULL){
            delete a;
        }
        else{
            system.debug('Error');
        }
        
        
        //handle the exception here do not write in if else
    }
    
    
    //write for record update either patch or put
    
    @httpPatch
    global static void PatchRecord(string Industry1){
        RestRequest res=RestContext.request;
    	string requestStr=res.requestURI;
    	List<string> s=requestStr.split('/');
      	//last string or word is account id here
      	string accID=s[s.size( )-1];
      	
        //getting the record
        
        Account a=[select ID,Name from Account where id=:accID];
        a.Industry=Industry1;
        //handle the exception here if a==NUll
        update a;
        
    }

}