using System; // пространство имен System

class Program
{
    static void Main()
    {
        int N = int.Parse(Console.ReadLine()); // ввод переменной N

        for (int i = N; i >= 0; i--)
        {
            for (char letter = (char)('Z' - (26 - N)); letter >= (char)('A' + i); letter--) // перебор алфавита
            {
                Console.Write(letter + " ");
            }
            Console.WriteLine();
        }
    }
}