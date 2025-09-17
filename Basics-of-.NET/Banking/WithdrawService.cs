using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Banking
{
    public class WithdrawService
    {
        public bool Withdraw(Account account, decimal amount)
        {
            return account.Withdraw(amount);
        }
    }
}
