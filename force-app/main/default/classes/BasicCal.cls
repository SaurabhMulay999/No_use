public class BasicCal {
    integer salary;
    double Hra;
    double MealAll;
    double TravelAll;
    double gross;
    
    
    public void input()
    {
        salary=10000;
    }
    public void calHra()
    {
        Hra=(20*salary/100);
    }
    public void calMeal()
    {
        MealAll=(5*salary/100);
    }
    public void calTrav()
    {
        TravelAll=(10*salary/100);
    }
    public void calculateGross()
    {
        gross= Hra+MealAll+TravelAll+salary;
     }
    public void display()
    {
        system.debug('Salary is'+ salary);
        system.debug('Hra is '+ Hra);
        system.debug('Meal allowance '+ MealAll);
        system.debug('Travel allowance'+ TravelAll);
        system.debug('Gross salary is -->>'+ gross);
    }

}