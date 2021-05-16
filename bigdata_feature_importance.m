[imp,ma] = predictorImportance(RF_Mdl)
feature = categorical({'WhiteElo', 'BlackElo', 'WhiteRatingDifference', 'BlackRatingDifference', 'ECO'});
feature = reordercats(feature,{'WhiteElo', 'BlackElo', 'WhiteRatingDifference', 'BlackRatingDifference', 'ECO'});
bar(feature, imp)
