function res=calculTabloDistancesEuclidiennes(a,b)
for i = 1:length(a)
    for j = 1:length(b)
        res(i,j) = distanceE(a(:,i),b(:,j));
    end
end
end