function distance=distanceE(ref,test)
% Formule sur wikipédia de calcul de la distance euclidienne entre deux
% vecteurs
    distance = sqrt(sum((ref - test).^2));
end