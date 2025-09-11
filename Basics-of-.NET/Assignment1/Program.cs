namespace Assignment1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int[] Student1 = new int[5];
            for (int i = 0; i < 5; i++)
            {
                Console.WriteLine("Enter the marks of student " + (i + 1) + ": ");
                Student1[i] = Convert.ToInt32(Console.ReadLine());
            }
            int sum = 0;
            for (int i = 0; i < 5; i++)
            {
                sum += Student1[i];
            }
            double average = sum / 5.0;
            Console.WriteLine("Student Grade Report");
            for (int i = 0; i < 5; i++)
            {
                Console.WriteLine("Subject " + (i + 1) + ": " + Student1[i]);
            }
            Console.WriteLine("Average Marks: " + average);
            if (average >= 90)
            {
                Console.WriteLine("Grade: A+");
            }
            else if (average >= 80)
            {
                Console.WriteLine("Grade: A");
            }
            else if (average >= 70)
            {
                Console.WriteLine("Grade: B");
            }
            else if (average >= 60)
            {
                Console.WriteLine("Grade: C");
            }
            else
            {
                Console.WriteLine("Grade: D");
            }
            bool hasFailed = false;
            for (int i = 0; i < 5; i++)
            {
                if (Student1[i] < 35)
                {
                    Console.WriteLine("Failed in Subject " + (i + 1));
                    hasFailed = true;
                }
            }
            if (!hasFailed)
            {
                Console.WriteLine("All Subjects Passed");
            }
        }
    }
}
