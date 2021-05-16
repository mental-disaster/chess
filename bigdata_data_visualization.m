X = table2array(sam_s_data_s);
Y = table2array(sam_s_label);

gscatter(X(:,1), X(:,2), Y, 'rgb')

xlabel('WhiteElo');
ylabel('BlackElo');