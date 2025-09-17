using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Banking
{
    public class DepositService
    {
        public void Deposit(Account account, decimal amount)
        {
            account.Deposit(amount);
        }
    }
}
