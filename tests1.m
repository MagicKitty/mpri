function [note1] = tests1() 
dir = './fichiers_wav/';
points = 0;

noms{1} = 'agauche1.wav';
noms{2} = 'adroite1.wav';
noms{3} = 'avance1.wav';
noms{4} = 'recule1.wav';
noms{5} = 'enhaut1.wav';
noms{6} = 'enbas1.wav';
for i = 1:6
    wav_file = strcat(dir, noms{i});
    w = audioread(wav_file)';
    [scores, nomsBase] = compareBase(w, dir);
    fprintf('----------------------\nScores obtenus pour le son %d (%s) :\n',i,noms{i});
    for j = 1:size(scores,2)
        fprintf('Son %d (%s) :\t%f\n',j,nomsBase{j},scores(j));
    end
    [s,k] = sort(scores,'ascend');
    r = find(k == i);
    points = points+6-r;
end
noms{1} = 'agauche2.wav';
noms{2} = 'adroite2.wav';
noms{3} = 'avance2.wav';
noms{4} = 'recule2.wav';
noms{5} = 'enhaut2.wav';
noms{6} = 'enbas2.wav';
for i = 1:6
    wav_file = strcat(dir, noms{i});
    w = audioread(wav_file)';
    [scores, nomsBase] = compareBase(w, dir);
    fprintf('----------------------\nScores obtenus pour le son %d (%s) :\n',i,noms{i});
    for j = 1:size(scores,2)
        fprintf('Son %d (%s) :\t%f\n',j,nomsBase{j},scores(j));
    end
    [s,k] = sort(scores,'ascend');
    r = find(k == i);
    points = points+6-r;
end
noms{1} = 'agauche3.wav';
noms{2} = 'adroite3.wav';
noms{3} = 'avance3.wav';
noms{4} = 'recule3.wav';
noms{5} = 'enhaut3.wav';
noms{6} = 'enbas3.wav';
for i = 1:6
    wav_file = strcat(dir, noms{i});
    w = audioread(wav_file)';
    [scores, nomsBase] = compareBase(w, dir);
    fprintf('----------------------\nScores obtenus pour le son %d (%s) :\n',i,noms{i});
    for j = 1:size(scores,2)
        fprintf('Son %d (%s) :\t%f\n',j,nomsBase{j},scores(j));
    end
    [s,k] = sort(scores,'ascend');
    r = find(k == i);
    points = points+6-r;
end
% noms{1} = 'agauche4.wav';
% noms{2} = 'adroite4.wav';
% noms{3} = 'avance4.wav';
% noms{4} = 'recule4.wav';
% noms{5} = 'enhaut4.wav';
% noms{6} = 'enbas4.wav';
% for i = 1:6
%     wav_file = strcat(dir, noms{i});
%     w = audioread(wav_file)';
%     [scores, nomsBase] = compareBase(w, dir);
%     fprintf('----------------------\nScores obtenus pour le son %d (%s) :\n',i,noms{i});
%     for j = 1:size(scores,2)
%         fprintf('Son %d (%s) :\t%f\n',j,nomsBase{j},scores(j));
%     end
%     [s,k] = sort(scores,'ascend');
%     r = find(k == i);
%     points = points+6-r;
% end
% noms{1} = 'agauche5.wav';
% noms{2} = 'adroite5.wav';
% noms{3} = 'avance5.wav';
% noms{4} = 'recule5.wav';
% noms{5} = 'enhaut5.wav';
% noms{6} = 'enbas5.wav';
% for i = 1:6
%     wav_file = strcat(dir, noms{i});
%     w = audioread(wav_file)';
%     [scores, nomsBase] = compareBase(w, dir);
%     fprintf('----------------------\nScores obtenus pour le son %d (%s) :\n',i,noms{i});
%     for j = 1:size(scores,2)
%         fprintf('Son %d (%s) :\t%f\n',j,nomsBase{j},scores(j));
%     end
%     [s,k] = sort(scores,'ascend');
%     r = find(k == i);
%     points = points+6-r;
% end

note1 = points/90*20
