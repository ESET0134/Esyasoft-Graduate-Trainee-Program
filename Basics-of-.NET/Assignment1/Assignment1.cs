namespace Assignment_1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Variables to store account details for a single account
            string accountNumber = null;
            string accountHolderName = null;
            decimal balance = 0m;
            bool accountCreated = false;

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
                    // Create New Account
                    if (accountCreated)
                    {
                        Console.WriteLine("Account is already created.");
                    }
                    else
                    {
                        Console.WriteLine("\n--- Creating New Account ---");
                        Console.Write("Account Number: ");
                        accountNumber = Console.ReadLine();

                        Console.Write("Account Holder Name: ");
                        accountHolderName = Console.ReadLine();

                        Console.Write("Initial Deposit Amount: ");
                        if (decimal.TryParse(Console.ReadLine(), out decimal initialDeposit) && initialDeposit >= 0)
                        {
                            balance = initialDeposit;
                            accountCreated = true;
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
                    // Deposit Money
                    if (!accountCreated)
                    {
                        Console.WriteLine("No account exists. Please create an account first.");
                    }
                    else
                    {
                        Console.WriteLine("\n--- Deposit Money ---");
                        Console.Write("Enter amount to deposit: ");
                        if (decimal.TryParse(Console.ReadLine(), out decimal depositAmount) && depositAmount > 0)
                        {
                            balance += depositAmount;
                            Console.WriteLine($"Successfully deposited: Rs {depositAmount}. New balance: Rs {balance}");
                        }
                        else
                        {
                            Console.WriteLine("Invalid deposit amount. Please enter a positive number.");
                        }
                    }
                }
                else if (choice == "3")
                {
                    // Withdraw Money
                    if (!accountCreated)
                    {
                        Console.WriteLine("No account exists. Please create an account first.");
                    }
                    else
                    {
                        Console.WriteLine("\n--- Withdraw Money ---");
                        Console.Write("Enter amount to withdraw: ");
                        if (decimal.TryParse(Console.ReadLine(), out decimal withdrawAmount) && withdrawAmount > 0)
                        {
                            if (withdrawAmount <= balance)
                            {
                                balance -= withdrawAmount;
                                Console.WriteLine($"Successfully withdrawn: Rs {withdrawAmount}. New balance: Rs {balance}");
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
                    // Display Account Details
                    if (!accountCreated)
                    {
                        Console.WriteLine("No account exists. Please create an account first.");
                    }
                    else
                    {
                        Console.WriteLine($"\n--- Your Account Details ---");
                        Console.WriteLine($"Account Number: {accountNumber}");
                        Console.WriteLine($"Account Holder: {accountHolderName}");
                        Console.WriteLine($"Current Balance: Rs {balance}");
                        Console.WriteLine($"-----------------------");
                    }
                }
                else if (choice == "5")
                {
                    // Exit
                    Console.WriteLine("Exiting application. Goodbye!");
                    break; // Exit the while loop
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
