import java.util.Scanner;
public class prog69
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter an integer: ");
        int n1 = sc.nextInt();
        sc.close();
        System.out.println("Double it and give it to the next person: " + (n1 * 2));
    }
}

