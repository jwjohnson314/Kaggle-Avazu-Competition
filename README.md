# Kaggle-Avazu-Competition
This repository contains some files used in the Kaggle Avazu click-through rate prediction contest to generate a single vowpal-wabbit model that scores ~0.393 on the private leaderboard. There are three files: a python script for munging the data, a python script for writing the predictions to a csv file suitable for submission to kaggle, and a shell script for running the python scripts, generating the model, and making the predictions.

During the competition this was run using a version of vowpal wabbit somewhere in the 7.6 range. The model scores 0.3952868 on the public leaderboard, and 0.3934794 on the private leaderboard, a reasonable result for a single model. My best model was obtained by ensembling this model with a simplistic libfm model.
