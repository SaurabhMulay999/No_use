//example ffor set collection
public class collectionEX {
    public static void displayresult()
    {
        Set<String> locations=new Set<String>();
        locations.add('Mumbai');
        locations.add('Pune');
        locations.add('chennai');
        locations.add('banglore');
        system.debug('Collection size:: '+ locations.size());
        
        list<String> countries= new list<String>();
        countries.add('india');
        countries.add('UK');
        countries.add('US');
        countries.add('England');
        
        
        locations.addall(countries);
        system.debug('collection size : '+ locations.size());
        system.debug(locations.contains('Mumbai'));
        locations.remove('Pune');
        
        
        for(String loc: locations)
        {
            system.debug('elements are:: '+ loc);
        }
        
        locations.clear();
        
    }
    

}