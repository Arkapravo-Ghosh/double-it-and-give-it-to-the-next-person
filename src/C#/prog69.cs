using System;

class Program
{
    static void Main(string[] args)
    {
        while (true)
        {
            try
            {
                Console.Write("Enter a number: ");
                int n1 = int.Parse(Console.ReadLine());
                Console.WriteLine("Double it and give it to the next person: {0}", n1 * 2);
                break;
            }
            catch (FormatException)
            {
                Console.WriteLine("You must enter an integer. Please try again.");
            }
        }
    }
}
