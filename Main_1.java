import java.util.Scanner; // входные данные

public class Main_1 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int N = scanner.nextInt();

        for (int i = N; i >= 0; i--) {
            for (char letter = (char) ('Z' - (26 - N)); letter >= 'A' + i; letter--) { // перебор алфавита
                System.out.print(letter + " ");
            }
            System.out.println();
        }
    }
}