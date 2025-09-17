using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Banking
{
    public class DisplayService
    {
        public void Display(Account account)
        {
            Console.WriteLine($"\n--- Your Account Details ---");
            Console.WriteLine($"Account Number: {account.AccountNumber}");
            Console.WriteLine($"Account Holder: {account.AccountHolderName}");
            Console.WriteLine($"Current Balance: Rs {account.Balance}");
            Console.WriteLine($"-----------------------");
        }
    }
}
