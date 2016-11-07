function matrice=calculate(a,wsize,decal,fpb)
matrice=[];
% boucle sur un décallage de valleur decal et de taille wsize
for i = 1:decal:(length(a)-wsize)
    % ici on a la fenêtre qui se déplace sur le signal
    w = a(i:(i+wsize-1));
    
    % signal de hamming
    h = hamming(wsize);
    % rotation pour correspondre au fichier test1
    h = rot90(h);
    
    % produit de convolution
    e = w .* h;
    
    % log spectre
    f = log(abs(fft(e)));
    
    % cepstre
    g = real(fft(f));
    
    % application du filtre PB
    matrice(1:fpb,end+1) = g(1:fpb);
end
end