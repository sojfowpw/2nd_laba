#include <iostream>
#include <string>
#include <cctype>
using namespace std;
int main() {
    int k = 0;
    string sentence;
    getline(cin, sentence); // ввод строки без учёта пробелов
    for (char letter = 'a'; letter <= 'z'; letter++) // перебор букв алфавита
    {
        if (sentence.find(letter) < 1000) { // поиск букв в строке
            k++; // счётчик встречающихся букв
        }
    }
    if (k == 26) {
        cout << "true";
    } else {
        cout << "false";
    }
    return 0;
}
