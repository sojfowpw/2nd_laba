import java.util.Scanner;

public class Main_3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int amount = scanner.nextInt(); // ввод количества чисел
        for (int i = 0; i < amount; i++) {
            int number = scanner.nextInt(); // ввод чисел
            int count = 0;
            while (number != 0) {
                if ((number % 10) % 2 == 0) { // проверка на чётность цифр
                    count++; // подсчёт количества
                }
                number /= 10;
            }
            System.out.println("Result: " + count);
        }
    }
}