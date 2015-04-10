#!/usr/bin/env sh


vw -d train.vw -b 22 -l 0.158789 --l2 4.7e-14 -q sa -f model.vw --loss_function logistic
vw -d test.vw -t -i model.vw -p preds.txt