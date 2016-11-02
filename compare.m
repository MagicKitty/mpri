function [score] = compare(motTeste,motBase)
a = motBase;
ref = calculate(a,480,160,25);
length(ref);

b = motTeste;
test = calculate(b,480,160,25);
length(test);


tabloDistancesEuclidiennes = calculTabloDistancesEuclidiennes(test,ref);

tabloDistancesLocales = calculTabloDistancesLocales(test,ref,tabloDistancesEuclidiennes);