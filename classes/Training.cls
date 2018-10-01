public class Training{
    public Training(){
        List<Account> acts = [select id, name , industry from account ];
    }
    
    public void oneTraining(){
        List<Account> acts = [select id, name , industry from account ];
    }
    
}