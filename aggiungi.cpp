/* 
Welcome to JDoodle!

You can execute code here in 88 languages. Right now you’re in the C++ IDE.

  1. Click the orange Execute button ▶ to execute the sample code below and see how it works.

  2. Want help writing or debugging code? Type a query into JDroid on the right hand side ---------------->

  3. Try the menu buttons on the left. Save your file, share code with friends and open saved projects.

Want to change languages? Try the search bar up the top. 
*/

#include <iostream>

using namespace std;

int aggiungidue(int x) {
    return x + 2;
}

int main() {
    int x = 10;
    int y = 25;
    int z = x+y;

    cout << "Sum of x+y=" << z << endl;
    
    unsigned short m;
    m = 65541;
    cout << "x=" << x << endl;
    int k;
    k = aggiungidue(x);
    cout << "k=" << k << endl;
    cout << "x=" << x << endl;
    
    cout << "m=" << m << endl;
    cout << "sizeof=" << sizeof(m) << endl;
}
