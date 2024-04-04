#include <iostream>
using namespace std;
int main() {
    int amount = 0, number = 0;
    cin >> amount; // ввод количества чисел
    for (int i = 0; i < amount; i++) {
        cin >> number; // ввод всех чисел
        int count = 0;
        while (number != 0) {
            if ((number % 10) % 2 == 0) { // проверка на чётность каждой цифры
                count++; // подсчёт количества
            }
            number /= 10;
        }
        cout << "Result: " << count << endl;
    }
    return 0;
}
