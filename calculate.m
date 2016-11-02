function matrice=calculate(a,wsize,decal,fpb)
matrice=[];
for i = 1:decal:(length(a)-wsize)
    w = a(i:(i+wsize-1));
    
    h = hamming(wsize);
    h = rot90(h);
    
    e = w .* h;
    
    f = log(abs(fft(e)));
    
    g = real(fft(f));
    
    matrice(1:fpb,end+1) = g(1:fpb);
end
end