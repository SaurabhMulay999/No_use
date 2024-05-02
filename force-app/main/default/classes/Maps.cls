public class Maps {
    
    public static void mapex()
    {
        Map<String,String> location=new Map<String, String>();
        location.put('BDC', 'Banglore');
        location.put('MDC', 'Mumbai');
        location.put('PDC', 'Pune');
        location.put('KDC', 'kolkata');
        system.debug(location.size());
        system.debug('collection elements:: '+ location);
        system.debug('the keys '+ location.keyset());
        system.debug('the vales'+ location.values());
        
        if(! location.isEmpty())
        {
            location.remove('KDC');
        }
        for(String elementkey: location.keyset())
        {
            system.debug('keys '+ elementkey+ ' the values :: '+ location.get(elementkey));
            
        }
        if(location.containskey('BDC'))
        {
            system.debug('The element value is::' + location.get('BDC'));
        }
        else{
            system.debug('Key Not found');
        }
        set<String> s= location.keyset();
        list<String> val =location.values();
        
        for(String e: s)
        {
            system.debug('the keys in the set is:: '+ e);
        }
        for(string e1: val)
        {
            system.debug('The values inside list:: '+ e1);
        }
        
    }

}