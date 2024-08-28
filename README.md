# 2023_Analysis_calculator

## Podaci o autoru i projektu
Autor: Đorđe Petrović 1036/2023

Projekat: Windows Calculator je moderna Windows aplikacija napisana u C++ i C# koja dolazi instalirana sa Windows-om.

Link do projekta, grana i heš kod commita: [Projekat](https://github.com/microsoft/calculator), main, b30ece5c03ba59f2639d337852af3a10a4fd4356

## Alati i uputstvo za pokretanje

### CppCheck
U folderu cppcheck postoji skripta koja build-uje submodul cppcheck, a potom ga pokreće i rezultat cuva u report.xml

### Dr Memory
Potrebno je instalirati [Dr Memory](https://drmemory.org/page_download.html) i u skripti postaviti pravilan path na drmemory.exe fajl. Skripta generise izlaz u drmemory_report folderu.  

### Build Insight 
Interni alat u Visual Studiu. Nakon selektovanja rešenja izabrati opciju: "Run Build Insight on Build Solution".

### Code Metrics
Interni alat u Visual Studiu. Izabrati odgovarajuci projekat u resenju, Calculator (Universal Windows), i potom izabrati opciju: "Analyze and Code Cleanup/Calculate Code Metrics" 

### Test Coverage
Pokrenuti skriptu "Test Coverage/script.bat". (Ne radi zbog problema build-ivanja CalculatorUnitTests projekta)


## Zaključak
Ovu aplikaciju dnevno koriste milioni ljudi, funkcionalna je i sa strane korisnika nema nikakvih problema. Međutim, analizom koda mogu se uočiti mesta gde je moguće poboljšanje kako bi se ispratili svi standardi.
