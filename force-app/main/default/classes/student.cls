public class student {
    string name;
    integer rollNo;
    string gender;
    integer age;
    double score;
    boolean graduate;
    
    public void input()
    {
        Name='Kanika';
        rollNo=12;
        gender='female';
        age=20;
        score=90.987;
        graduate=true;
        
        
    }
    public void display()
    {
        system.debug('Name is '+ name);
        system.debug('roll number '+ rollNo);
        system.debug('gender is '+ gender);
        system.debug('Age is '+ age);
        system.debug('score is '+ score);
        system.debug('graduate?? --> '+ graduate);
        system.debug('end');
    }

}