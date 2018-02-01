Public class Accountclass{
    public Accountclass(){
        List<Account> act = [select id,name,active__c from Account];
        //comment in account class
    }
    
}