Public class Accountclass{
    public Accountclass(){
        List<Account> act = [select id,name,activate1__c from Account];
        //comment in account class
    }
    
}