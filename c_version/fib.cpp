#include <iostream>
using namespace std;
int FIBnum[30];
#define fib FIBnum
#define fibSize sizeof(fib)/sizeof(int)

int main(){
    fib[0]=1;
    fib[1]=1;
    cout<<fib[0]<<" "<<fib[1]<<" ";
    for(int i=2; i<fibSize; i++){
        fib[i] = fib[i-1] + fib[i-2];
        cout<<fib[i]<<" ";
    }
    return 0;
}