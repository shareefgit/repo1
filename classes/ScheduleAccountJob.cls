global class ScheduleAccountJob Implements Schedulable
    {
        global void execute(SchedulableContext sc)
        {
            getAccounts();
        }

        public void getAccounts()
        {
            List<Account> listAccounts = new List<Account>();
            listAccounts = [SELECT ID,AnnualRevenue FROM Account];

            for(Account acc : listAccounts)
            {
                acc.AnnualRevenue = 100;
            }

            //update listAccounts;
        }
    }