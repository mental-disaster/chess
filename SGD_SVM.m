u=0.000001; % learning rate for stochastic gradient descent (SGD)
maxEpoch=100; 
SGD_MDL=train_SVM(table2array(fin_data),B,u,maxEpoch);
Y_hat=predict_SVM(SGD_MDL,table2array(test_fin));
Yt=(table2array(test_label) == '0-1');
test_accuracy=sum(Y_hat'==Yt)/numel(Yt) * 100
plotconfusion(categorical(Yt),categorical(Y_hat'))