using System;
using System.Collections.Generic;

namespace Class_DEmo
{
    internal class Student
    {
        List<int> student_id = new List<int>();
        List<string> name = new List<string>();
        List<int> age = new List<int>();
        List<string> contact_no = new List<string>();
        List<string> emailId = new List<string>();

        public void initialize(int student_no)
        {
            int index = student_no - 1;

            // Ensure all lists are large enough
            while (student_id.Count <= index) student_id.Add(0);
            while (name.Count <= index) name.Add("");
            while (age.Count <= index) age.Add(0);
            while (contact_no.Count <= index) contact_no.Add("");
            while (emailId.Count <= index) emailId.Add("");

            Console.WriteLine("Enter Student ID:");
            student_id[index] = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter Student Name:");
            name[index] = Console.ReadLine();

            Console.WriteLine("Enter Student Age:");
            age[index] = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter Student Contact No:");
            contact_no[index] = Console.ReadLine();

            Console.WriteLine("Enter Student Email ID:");
            emailId[index] = Console.ReadLine();
        }

        public void showDisplay(int student_no)
        {
            int index = student_no - 1;

            if (index < 0 || index >= student_id.Count)
            {
                Console.WriteLine("Invalid student number.\n");
                return;
            }

            Console.WriteLine("Student ID: " + student_id[index]);
            Console.WriteLine("Student Name: " + name[index]);
            Console.WriteLine("Student Age: " + age[index]);
            Console.WriteLine("Student Contact No: " + contact_no[index]);
            Console.WriteLine("Student Email ID: " + emailId[index] + "\n");
        }
    }
}
