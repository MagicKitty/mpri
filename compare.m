function [score] = compare(motTeste,motBase)
a = motBase;
% mot de référence
ref = calculate(a,240,80,25);
length(ref);

b = motTeste;
% mot test
test = calculate(b,240,80,25);
length(test);

tabloDistancesEuclidiennes = calculTabloDistancesEuclidiennes(test,ref);

% calcul du score à partire du tableau des distances euclidiennes
score = calculScore(test,ref,tabloDistancesEuclidiennes);