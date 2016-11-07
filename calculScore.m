function score=calculScore(a,b,d)

min1 = 0;
min2 = 0;
min3 = 0;
for i = 1:length(a)
    for j = 1:length(b)
        if i==1 && j==1 % si dans le coin
            D(i,j) = d(i,j);
            B(i,j) = 0;
        elseif i == 1 % si sur la première colonne
            D(i,j) = d(i,j) + D(i,j-1);
            B(i,j) = j;
        elseif j == 1 % si sur la première ligne
            D(i,j) = d(i,j) + D(i-1,j);
            B(i,j) = i;
        else
            min1 = min(D(i-1,j-1),D(i-1,j));
            min2 = min(D(i-1,j),D(i,j-1));
            min3 = min(min1,min2); % on trouve ici le min des 3
            D(i,j) = d(i,j) + min3; % formule du devoir
            switch (min3) % on trouve d'où vient le min
                case D(i-1,j-1)
                    B(i,j) = B(i-1,j-1) + 1;
                case D(i-1,j)
                    B(i,j) = B(i-1,j) + 1;
                case D(i,j-1)
                    B(i,j) = B(i,j-1) + 1;
            end
        end
    end
end
% normalisation de la distance D(m,n)
score = D(length(a),length(b)) / B(length(a),length(b));
end