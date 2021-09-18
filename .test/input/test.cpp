#include <iostream>

using namespace std;

int main(){
    int year,month,day;
    char name[256];
    cout << "Input test" << endl;
    cin >> year;
    cin >> month;
    cin >> day;
    cin >> name;
    cout << "Softwere name: " << name << endl;
    cout << "First release date: " << year << "/" << month << "/" << day << endl;
    return 0;
}