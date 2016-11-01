a = wavread('./fichiers_wav/adroite1.wav');
ref = calculate(a,480,160,25);
length(ref)

b = wavread('./fichiers_wav/adroite2.wav');
test = calculate(b,480,160,25);
length(test)


tabloDistancesEuclidiennes = calculTabloDistancesEuclidiennes(test,ref);

