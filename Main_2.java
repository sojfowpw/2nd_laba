import java.util.Scanner;

public class Main_2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String sentence = scanner.nextLine(); // ввод строки
        int k = 0;
        for (char letter = (char) ('a'); letter <= (char) ('z'); letter++) { // перебор букв алфавита
            if (sentence.contains(Character.toString(letter))) { // поиск букв в строке, преобразование символьного литерала в стркоку
                k++; // счётчик встречающихся букв
            }
        }
        if (k == 26) {
            System.out.print("true");
        }
        else {
            System.out.print("false");
        }
    }
}
