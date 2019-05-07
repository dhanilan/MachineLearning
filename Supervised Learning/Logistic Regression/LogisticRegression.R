logitMod <- glm(ABOVE50K ~ RELATIONSHIP + AGE + CAPITALGAIN + OCCUPATION + EDUCATIONNUM, data=trainingData, family=binomial(link="logit"))

predicted <- plogis(predict(logitMod, testData))  # predicted scores
# or
predicted <- predict(logitMod, testData, type="response")  # predicted scores
vif(logitMod)
misClassError(testData$ABOVE50K, predicted, threshold = optCutOff)
plotROC(testData$ABOVE50K, predicted)
sensitivity(testData$ABOVE50K, predicted, threshold = optCutOff)
specificity(testData$ABOVE50K, predicted, threshold = optCutOff)
confusionMatrix(testData$ABOVE50K, predicted, threshold = optCutOff)