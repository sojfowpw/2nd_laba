#include<iostream>
using namespace std;
int main() {
    int N = 0; // число N
    cin >> N;
    for (int i = N; i >= 0; i--) {
    for (char letter = 'Z' - (26 - N); letter >= 'A' + i; letter--) { // перебор алфавита
        cout << letter << " ";
    }
    cout << endl;
    }
    return 0;
}
