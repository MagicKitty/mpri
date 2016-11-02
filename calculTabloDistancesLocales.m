function D=calculTabloDistancesLocales(a,b,d)

for i = 1:length(a)
    for j = 1:length(b)
        if i==1 && j==1
            D(i,j) = d(i,j);
        elseif i == 1
            D(i,j) = d(i,j) + D(i,j-1);
        elseif j == 1
            D(i,j) = d(i,j) + D(i-1,j);
        else
            min1 = min(D(i-1,j-1),D(i-1,j));
            min2 = min(D(i-1,j),D(i,j-1));
            min = min(min1,min2);
            D(i,j) = d(i,j) + min;
        end
    end
end

end