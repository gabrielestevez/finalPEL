#include <iostream>
#include <fstream>

using namespace std;

string archivo = "../avila.tsv";

int cp;
string municipio;
int poblacion;
int altura;
int superficie;

struct box{
    int v;
    box *sgt;
    box *ant;
};
typedef struct box *Tlista;
box *peek = NULL;

void nMunicipios(Tlista lista){
    ifstream fin(archivo);//Declaramos fin como variable de entrada
    int numeroMun;
    Tlista q;
    q = new(struct box);
    q->sgt = lista;
    lista  = q;
    while(!fin.eof()){
        fin>>cp>>municipio>>poblacion>>altura>>superficie;
        q ->v = cp; //En este metodo no hacen falta listas enlazadas
        numeroMun ++;
    }
    cout << "\n" << "El numero de municipios es : " << numeroMun;
}

void alturaMax(Tlista lista){
    ifstream fin(archivo);//Declaramos fin como variable de entrada
    int alturaMaxima = 0;
    string nombreMun;
    cout << "\n"<< "La localidad con la altura máxima es: ";
    Tlista q;
    q = new(struct box);
    q->sgt = lista;
    lista  = q;
    while (!fin.eof()){
        fin>>cp>>municipio>>poblacion>>altura>>superficie;
        q ->v = altura;
        if (altura>alturaMaxima)
        {
            alturaMaxima = altura;
            nombreMun = municipio;
        }
    }
    cout << nombreMun << " con " << alturaMaxima<< "m";
}

void alturaMin(Tlista lista){
    ifstream fin(archivo);//Declaramos fin como variable de entrada
    int alturaPrimera = 910;
    string nombreMun;
    cout << "\n"<< "La localidad con la altura mínima es: ";
    Tlista q;
    q = new(struct box);
    q->sgt = lista;
    lista  = q;
    while (!fin.eof()){
        fin>>cp>>municipio>>poblacion>>altura>>superficie;
        q ->v = altura;
            if (altura <= alturaPrimera) {
                alturaPrimera = altura;
                nombreMun = municipio;
            }
    }
    cout << nombreMun << " con " << alturaPrimera<< "m";
}

void masPoblada(Tlista lista){
    ifstream fin(archivo);
    int poblacionMaxima;
    string nombreMun;
    Tlista q;
    q = new(struct box);
    q->sgt = lista;
    lista  = q;
    while(!fin.eof()){
        fin>>cp>>municipio>>poblacion>>altura>>superficie;
        q ->v = poblacion;
        if (poblacion > poblacionMaxima ){
            poblacionMaxima = poblacion;
            nombreMun = municipio;
        }
    }
    cout << "\n" << "La poblacion maxima es: " << nombreMun << " con "<< poblacionMaxima;
}

void menosPoblada(Tlista lista){
    ifstream fin(archivo);
    int poblacionMin;
    string nombreMun;
    Tlista q;
    q = new(struct box);
    q->sgt = lista;
    lista  = q;
    while(!fin.eof()){
        fin>>cp>>municipio>>poblacion>>altura>>superficie;
        q -> v = poblacion;
        if (poblacion <= poblacionMin ){
            poblacionMin = poblacion;
            nombreMun = municipio;
        }
    }
    cout << "\n" << "La poblacion minima es: " << nombreMun << " con "<< poblacionMin << "\n";
}

void habYAltura(Tlista lista){
    ifstream fin(archivo);
    cout<< "Los municipios con más de 40 hab y a +900 m son: " << "\n";
    string nombreMun;
    Tlista q;
    q = new(struct box);
    q->sgt = lista;
    lista  = q;
    while(!fin.eof()){
        fin>>cp>>municipio>>poblacion>>altura>>superficie;
        if(poblacion > 40){
            q ->v = poblacion;
            if(altura > 900){
                q ->v = altura;
                nombreMun = municipio;
                cout<< nombreMun << "\n";
            }
        }
    }
}

void masDensa(Tlista lista){ //poblacion/superficie   no funciona
    ifstream fin(archivo);
    cout<<"La localidad con mayor densidad es: ";
    string nombreMun;
    int densidad;
    Tlista q;
    q = new(struct box);
    q->sgt = lista;
    lista  = q;
    while(!fin.eof()){
        fin>>cp>>municipio>>poblacion>>altura>>superficie;
        q ->v = poblacion;
        densidad = poblacion/superficie;
        if(densidad > densidad){
            densidad = densidad;
            nombreMun = municipio;
            cout << nombreMun;
        }
    }
    cout<<" con una densidad de " << densidad << " habitantes/km2"<< "\n";
}

void madrid(Tlista lista){
    ifstream fin(archivo);
    int pobTotal;
    Tlista q;
    q = new(struct box);
    q->sgt = lista;
    lista  = q;
    while(!fin.eof()){
        fin>>cp>>municipio>>poblacion>>altura>>superficie;
        q ->v = poblacion;
        pobTotal = poblacion + pobTotal;
    }
    cout << "La poblacion de Avila " << pobTotal << " por lo que Madrid es " << 6507184/pobTotal << " veces mas grande";
}

int main(){
    Tlista lista = NULL;
    nMunicipios(lista);
    alturaMax(lista);
    alturaMin(lista);
    masPoblada(lista);
    menosPoblada(lista);
  //  masDensa(lista);
    madrid(lista);
   habYAltura(lista);
    return 0;
}

