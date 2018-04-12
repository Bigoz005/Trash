#include <iostream>
#include <stdio.h> 
#include <cstdlib>
#include <time.h>
#include <math.h>

using namespace std;

class Zespolona
{
	double cz_r;
	double cz_u;

public:
	Zespolona(double r, double u) : cz_r(r), cz_u(u)
	{}

	Zespolona() : cz_r(rand() % 100 - 50), cz_u(rand() % 100 - 50)
	{}

	void modul()
	{
		double x = sqrt((cz_r*cz_r) + (cz_u*cz_u));
		cout << "Modul       : " << x << endl;
	}

	void sprzezenie()
	{
		cout << "Sprzezenie  : " << cz_r << " + (" << -1 * cz_u << ")i" << endl;
	}

	void dodawanie(Zespolona z)
	{

		cz_r += z.cz_r;
		cz_u += z.cz_u;
		cout << "Dodawanie   : " << cz_r << " + (" << cz_u << ")i" << endl;
	}

	void odejmowanie(Zespolona z)
	{
		cz_r -= z.cz_r;
		cz_u -= z.cz_u;

		cout << "Odejmowanie : " << cz_r << " + (" << cz_u << ")i" << endl;
	}

	void mnozenie(Zespolona z)
	{
		double r = (cz_r*z.cz_r - cz_u * z.cz_u);
		double u = (cz_r*z.cz_u + z.cz_r*cz_u);
		Zespolona c(r, u);

		cout << "Mnozenie    : ";
		c.wyswietlanie();
	}

	void wyswietlanie()
	{
		cout << cz_r << " + (" << cz_u << ")i" << endl;
	}
};

int main()
{
	double x, y;
	cout << "Podaj czesc rzeczywista liczby zespolonej: ";
	cin >> x;
	cout << "Podaj czesc urojona liczby zespolonej    : ";
	cin >> y;

	srand(static_cast<unsigned>(time(NULL)));
	Zespolona a(x, y);
	cout << "Utworzono a : ";
	a.wyswietlanie();

	Zespolona b;
	cout << "Wylosowano b: ";
  b.wyswietlanie();

	a.modul();
	a.sprzezenie();

	a.dodawanie(b);
	b.odejmowanie(a);
	a.mnozenie(b);

	cout << "Liczba a    : ";
	a.wyswietlanie();
	cout << "Liczba b    : ";
	b.wyswietlanie();
  
	system("pause");
  
  const int n=10;
  Zespolona tablica[n];
  
  cout << "Liczba 1    : ";
	tablica[0].wyswietlanie();
	cout << "Liczba 9    : ";
	tablica[8].wyswietlanie();

  tablica[0].modul();
  tablica[0].sprzezenie();
  tablica[0].dodawanie(tablica[8]);
  tablica[0].odejmowanie(tablica[8]);
  tablica[0].mnozenie(tablica[8]);
  tablica[0].wyswietlanie();
  
  system("pause");
}