public with sharing class CallToLoqateAPI {
    @AuraEnabled(cacheable=true)
    public static string GetAddress(String Text,String Country){
        try {
            String URL='https://api.addressy.com/Capture/Interactive/Find/v1.1/json3.ws?Key=FR57-FA94-CJ98-KH99&Text='+Text+'&Countries='+Country;
            //String url='https://pets-v2.dev-apis.com/pets?animal='+pet;
            HttpRequest rqt=new HttpRequest();
            rqt.setEndpoint(URL);
            rqt.setMethod('GET');
            HttpResponse response = new Http().send(rqt);

            if(response.getStatusCode()==200){
                return response.getBody();

            }else{
                system.debug('Status Code'+response.getStatusCode());
                system.debug('Error Response'+response.getBody());
                return NULL;
            }

            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled(cacheable=true)
    public static string GetAddressData(String ID,String UserSelectedText,String Country){
        try {
            UserSelectedText=UserSelectedText.replaceAll(' ','');
            system.debug(UserSelectedText);
            String URL='https://api.addressy.com/Capture/Interactive/Find/v1.1/json3.ws?Key=FR57-FA94-CJ98-KH99&Text='+UserSelectedText+'&Countries='+Country+'&container='+ID;
            //String url1='https://api.addressy.com/Capture/Interactive/Find/v1.1/json3.ws?Key=FR57-FA94-CJ98-KH99&Text=Blookbergstraat 3600 Genk&Countries=BE&container=be-lp|wPziuYcBX8V_g8RE-cNZ';
            URL.trim();

            system.debug(URL);
            HttpRequest rqt=new HttpRequest();
            rqt.setEndpoint(URL);
            rqt.setMethod('GET');
            HttpResponse response = new Http().send(rqt);

            if(response.getStatusCode()==200){
                return response.getBody();

            }else{
                system.debug('Status Code'+response.getStatusCode());
                system.debug('Status of response'+response.getBody());
                return NULL;
            }

            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled(cacheable=true)
    public static string GetExtraEndAddress(String Id){
        try {
           String URL='https://api.addressy.com/Capture/Interactive/Retrieve/v1.2/json3.ws?Key=FR57-FA94-CJ98-KH99&Id='+Id;
            HttpRequest rqt=new HttpRequest();
            rqt.setEndpoint(URL);
            rqt.setMethod('GET');
            HttpResponse response = new Http().send(rqt);

            if(response.getStatusCode()==200){
                return response.getBody();

            }else{
                system.debug('Status Code'+response.getStatusCode());
                system.debug('Error Response'+response.getBody());
                return NULL;
            }

            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }




    public CallToLoqateAPI() {
    }
}