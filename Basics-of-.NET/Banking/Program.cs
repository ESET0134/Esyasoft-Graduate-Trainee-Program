namespace Banking
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Account account = null;
            var depositService = new DepositService();
            var withdrawService = new WithdrawService();
            var displayService = new DisplayService();

            Console.WriteLine("--- Banking Application ---");

            while (true)
            {
                Console.WriteLine("\n--- Main Menu ---");
                Console.WriteLine("1. Create New Account");
                Console.WriteLine("2. Deposit Money");
                Console.WriteLine("3. Withdraw Money");
                Console.WriteLine("4. Display Account Details");
                Console.WriteLine("5. Exit");
                Console.Write("Enter your choice: ");

                string choice = Console.ReadLine();

                if (choice == "1")
                {
                    if (account != null)
                    {
                        Console.WriteLine("Account is already created.");
                    }
                    else
                    {
                        Console.WriteLine("\n--- Creating New Account ---");
                        Console.Write("Account Number: ");
                        string accountNumber = Console.ReadLine();

                        Console.Write("Account Holder Name: ");
                        string accountHolderName = Console.ReadLine();

                        Console.Write("Initial Deposit Amount: ");
                        if (decimal.TryParse(Console.ReadLine(), out decimal initialDeposit) && initialDeposit >= 0)
                        {
                            account = new Account(accountNumber, accountHolderName, initialDeposit);
                            Console.WriteLine("Account created successfully!");
                        }
                        else
                        {
                            Console.WriteLine("Invalid initial deposit amount. Please enter a non-negative number.");
                        }
                    }
                }
                else if (choice == "2")
                {
                    if (account == null)
                    {
                        Console.WriteLine("No account exists. Please create an account first.");
                    }
                    else
                    {
                        Console.WriteLine("\n--- Deposit Money ---");
                        Console.Write("Enter amount to deposit: ");
                        if (decimal.TryParse(Console.ReadLine(), out decimal depositAmount) && depositAmount > 0)
                        {
                            depositService.Deposit(account, depositAmount);
                            Console.WriteLine($"Successfully deposited: Rs {depositAmount}. New balance: Rs {account.Balance}");
                        }
                        else
                        {
                            Console.WriteLine("Invalid deposit amount. Please enter a positive number.");
                        }
                    }
                }
                else if (choice == "3")
                {
                    if (account == null)
                    {
                        Console.WriteLine("No account exists. Please create an account first.");
                    }
                    else
                    {
                        Console.WriteLine("\n--- Withdraw Money ---");
                        Console.Write("Enter amount to withdraw: ");
                        if (decimal.TryParse(Console.ReadLine(), out decimal withdrawAmount) && withdrawAmount > 0)
                        {
                            if (withdrawService.Withdraw(account, withdrawAmount))
                            {
                                Console.WriteLine($"Successfully withdrawn: Rs {withdrawAmount}. New balance: Rs {account.Balance}");
                            }
                            else
                            {
                                Console.WriteLine("Insufficient funds for withdrawal.");
                            }
                        }
                        else
                        {
                            Console.WriteLine("Invalid withdrawal amount. Please enter a positive number.");
                        }
                    }
                }
                else if (choice == "4")
                {
                    if (account == null)
                    {
                        Console.WriteLine("No account exists. Please create an account first.");
                    }
                    else
                    {
                        displayService.Display(account);
                    }
                }
                else if (choice == "5")
                {
                    Console.WriteLine("Exiting application. Goodbye!");
                    break;
                }
                else
                {
                    Console.WriteLine("Invalid choice. Please enter a number between 1 and 5.");
                }
                Console.WriteLine("\nPress any key to continue...");
                Console.ReadKey();
            }
        }
    }
}
