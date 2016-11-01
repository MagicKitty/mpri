function distance=distanceE(ref,test)
    distance = sqrt(sum((ref - test).^2));
end