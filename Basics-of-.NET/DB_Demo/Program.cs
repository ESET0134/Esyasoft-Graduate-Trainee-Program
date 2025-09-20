using System;
using System.Data.SqlClient;

namespace DB_Demo
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello, World!");
            Console.WriteLine("Getting Connection ...");

            var datasource = @"LAPTOP-08859FSJ"; // your server
            var database = "B2_DB_Demo"; // your database name
            //var username = "DESKTOP-LCNNVH9\\kk"; // username of server to connect
            //var password = ""; // password

            // Create your connection string
            string connString = @"Data Source=" + datasource +
                ";Initial Catalog=" + database + "; Trusted_Connection=True;";


            Console.WriteLine(connString);

            SqlConnection conn = new SqlConnection(connString);

            try
            {
                Console.WriteLine("Opening Connection ...");
                // Open the connection
                conn.Open();
                Console.WriteLine("Connection successful!");
                InsertStaff(conn);
                displayStaff(conn);

            }
            catch (Exception e)
            {
                Console.WriteLine("Error: " + e.Message);
            }
            finally
            {
                // Close the connection
                conn.Close();
            }


        }
        static void InsertStaff(SqlConnection conn)
        {
            Console.Write("Enter Student Details...");

            string myname = "Shruti";
            int Stu_Id = 103;
            string contact = "9876543210";
            string querry = "insert into Student values(@Stu_Id, @myname, @contact)";
            SqlCommand cm = new SqlCommand(querry, conn);
            cm.Parameters.AddWithValue("@myname", myname);
            cm.Parameters.AddWithValue("@Stu_Id", Stu_Id);
            cm.Parameters.AddWithValue("@contact", contact);
            int rows = cm.ExecuteNonQuery();
            if (rows > 0)
            {
                Console.WriteLine("Inserted record successfully");
            }
        }
        static void displayStaff(SqlConnection conn)
        {
            string query = "select * from Student";
            SqlCommand cm = new SqlCommand(query, conn);
            SqlDataReader reader = cm.ExecuteReader();
            Console.WriteLine("Student :");
            while (reader.Read())
            {
                {
                    Console.WriteLine($"Id :{reader["Student_id"]}\n" +
                        $"Name :{reader["Student_name"]}\n" +
                        $"Contact :{reader["Student_contact_no"]}\n\n");
                }
            }
        }
    }
}
