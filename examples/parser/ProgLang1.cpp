#include <iostream>
#include <fstream>
#include <string>

using namespace std;

//--------Globals---------------
char token;
string line;
bool error;
int i;
ofstream fout("output2.txt");
//------------------------------

//--------Prototype-------------
void readin();
void exp();
void term();
void factor();
void number();
void digit();
void getToken();
void parse();

//------------------------------

int main(){
    //Control globals
   // token = '_';
    line = '_';
    error = false;
    i = 0;
    //----------------
    
    readin();
    cout << endl << "End of program" << endl;
    return 0;
}

void readin(){
    ifstream fin("input.txt");
    while(fin){
        fin >> line;
        i = 0;
        parse();
        if (error == 1)
            fout << "Error exists in this problem" << endl;
    }
    fin.close();
}

void getToken(){
    //token = ' ';
    token = line[i];
    if(int(token) != 0){
        fout << endl << "<getToken> " << token << " ";
        i++;
    }
    else
        fout << endl;
}

void parse(){
    fout << "<parse> ";
    getToken();
    exp();
}

void exp(){
    fout << "<exp> ";
    term();
    while(token == '+'){
        getToken();
        term();
    }
}

void term(){
    fout << "<term>";
    factor();
    while(token == '*'){ //double chck on tokentype
        getToken();
        factor();
    }
}

void factor(){
    fout << "<factor> ";
    if(token == '('){
        getToken();
        exp();
        if(token == ')')
            getToken();
        else
            error = true;
    }
    else
        number();
}

void number(){
    fout << "<number> ";
    digit();
    int s[] = {1,2,3,4,5,6,7,8,9};
    string si = "0123456789";
    while(token == '1' || token == '2' || token == '3'||token =='4'||token=='5'||token=='6'||token=='7'||token=='8'||token=='9'||token=='0'){
        digit();
    }
}

void digit(){
    fout << "<digit> ";
    int s[] = {0,1,2,3,4,5,6,7,8,9};
    string si = "0123456789";
    if(token == '1' || token == '2' || token == '3'||token =='4'||token=='5'||token=='6'||token=='7'||token=='8'||token=='9'||token=='0')
        getToken();
    else
        error = true;
}