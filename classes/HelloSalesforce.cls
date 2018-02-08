public class HelloSalesforce
{
    public static void helloAstro()//BP Demo 
    {
        Account a1 = new Account(); 
        //insert test account
        a1.Name = 'BioMerieux Acct';
        a1.AccountNumber = '78910';
        a1.Type = 'Other';
        a1.Industry = 'Healthcare';
        insert a1;
    }
}