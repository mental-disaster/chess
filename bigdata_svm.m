X = sam_s_data;
Y = sam_s_label;

disp("fitting svm")
svm_Mdl = fitcecoc(X,Y);
disp("fit complete")

disp("fitting RF")
RF_Mdl = fitcensemble(X,Y);
disp("fit complete")


ans = table2array(test_label);
test_d = test_data;

% pridict test data(SVM)
output_svm = predict(svm_Mdl, test_d);
cor = 0;
for i = 1:length(output_svm)
   if(output_svm(i) == ans(i))
       cor = cor + 1;
   end
end

svm_result = cor / length(output_svm)


% pridict test data(RF)
output_RF = predict(RF_Mdl, test_d);
ans = table2array(test_label);
cor = 0;

for i = 1:length(output_RF)
   if(output_RF(i) == ans(i))
       cor = cor + 1;
   end
end

RF_result = cor / length(output_RF)