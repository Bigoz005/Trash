 answer=1;
 while(answer==1)
  disp('1. Dodawanie');
  disp('2. Mnozenie');
  disp('3. Potega macierzy');
  disp('4. Potega tablicy');
  disp('5. Transpozycja macierzy');
  disp('6. Transpozycja tablicy');
  choice=input('Operacja(1-6): ');
  
  switch choice
    case 1
        first= input('Podaj pierwsza zmienna: ');
        second= input('Podaj druga zmienna: ');
        t0=clock();
        result= dodawanie(first,second);
        elapsed_time=etime(clock(),t0);
        disp('Wynik funkcji = ');
        disp(result);
        disp('Wynik operatora = ');
        t1=clock();
        wynik_matlab=first+second;
        elapsed_time2=etime(clock(),t1);
        disp(wynik_matlab);
        disp('Roznica w czasie = ');
        disp(elapsed_time-elapsed_time2);
    case 2
        first= input('Podaj pierwsza zmienna: ');
        second= input('Podaj druga zmienna: ');
        t0=clock();
        result= mnozenie(first,second);
        elapsed_time=etime(clock(),t0);
        disp('Wynik funkcji = ');
        disp(result);
        disp('Wynik operatora = ');
        t1=clock();
        wynik_matlab=first*second;
        elapsed_time2=etime(clock(),t1);
        disp(wynik_matlab);
        disp('Roznica w czasie = ');
        disp(elapsed_time-elapsed_time2);
    case 3
        first= input('Podaj pierwsza zmienna: ');
        second= input('podaj numer: ');
        t0=clock();
        result= potega_macierz(first,second);
        elapsed_time=etime(clock(),t0);
        disp('Wynik funkcji = ');
        disp(result);
        disp('Wynik operatora = ');
        t1=clock();
        wynik_matlab=first^second;
        elapsed_time2=etime(clock(),t1);
        disp(wynik_matlab);
        disp('Roznica w czasie = ');
        disp(elapsed_time-elapsed_time2);
    case 4
       first= input('Podaj pierwsza zmienna: ');
        second= input('podaj numer: ');
        t0=clock();
        result= potega_tablica(first,second);
        elapsed_time=etime(clock(),t0);
        disp('Wynik funkcji = ');
        disp(result);
        disp('Wynik operatora = ');
        t1=clock();
        wynik_matlab=first.^second;
        elapsed_time2=etime(clock(),t1);
        disp(wynik_matlab);
        disp('Roznica w czasie = ');
        disp(elapsed_time-elapsed_time2);
    case 5
        first= input('Podaj zmienna macierzy: ');
        t0=clock();
        result= transpozycja_macierz(first);
        elapsed_time=etime(clock(),t0);
         disp('Wynik funkcji = ');
        disp(result);
        disp('Wynik operatora = ');
        t1=clock();
        wynik_matlab=first';
        elapsed_time2=etime(clock(),t1);
        disp(wynik_matlab);
        disp('Roznica w czasie = ');
        disp(elapsed_time-elapsed_time2);
    case 6
        first= input('Podaj zmienna tablicy: ');
        t0=clock();
        result= transpozycja_tablica(first);
        elapsed_time=etime(clock(),t0);
         disp('Wynik funkcji = ');
        disp(result);
        disp('Wynik operatora = ');
        t1=clock();
        wynik_matlab=first.';
        elapsed_time2=etime(clock(),t1);
        disp(wynik_matlab);
        disp('Roznica w czasie = ');
        disp(elapsed_time-elapsed_time2);                
    otherwise
        ('Blad');
   end
   
   disp('0- quit, 1- continue');
   answer=input('Podana liczba : ');
end
 