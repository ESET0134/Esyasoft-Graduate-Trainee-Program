namespace Class_DEmo
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Student first = new Student();
            bool initialized = false;
            int student_no = 0;

            while (true)
            {
                Console.WriteLine("Options:\n1. Initialize Student Details\n2. Display Student Details\n3. Exit\nEnter your choice: ");
                int choice = Convert.ToInt32(Console.ReadLine());
                switch (choice)
                {
                    case 1:
                        student_no++;
                        first.initialize(student_no);
                        break;
                    case 2:
                        if (student_no == 0)
                        {
                            Console.WriteLine("No student details available. Please initialize first.\n");
                            break;
                        }
                        else
                        {
                            for (int i = 1; i<=student_no; i++)
                            {
                                Console.WriteLine($"Displaying details for Student {i}:");
                                first.showDisplay(i);
                            }
                        }
                        break;
                    case 3:
                        Environment.Exit(0);
                        break;
                    default:
                        Console.WriteLine("Invalid Choice\n");
                        break;
                }
            }
        }
    }
}
