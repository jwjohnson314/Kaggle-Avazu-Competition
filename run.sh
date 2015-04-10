#!/usr/bin/env sh

# get the data in the right format - change the paths to fit
python csv_to_vw.py --loc_csv PATH/TO/TRAIN --loc_output /PATH/FOR/OUTPUT/TRAIN/VW/FILE -t
python csv_to_vw.py --loc_csv PATH/TO/TEST --loc_output /PATH/FOR/OUTPUT/TEST/VW/FILE 

# change the paths for model.vw and preds.txt if you wish
vw -d train.vw -b 22 -l 0.158789 --l2 4.7e-14 -q sa -f model.vw --loss_function logistic
vw -d test.vw -t -i model.vw -p preds.txt

# convert the predictions to probabilities and write to csv for submission - change the path
python vw_to_kaggle.py --loc_preds preds.txt --loc_csv /PATH/FOR/OUTPUT/PRED/CSV/SUBMISSION/FILE