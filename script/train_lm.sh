#!/bin/bash

CONFIG="librispeech_lm"
DIR="/work/b07u1234/b06502162/HW1-2"

echo "Start running training process of RNNLM"
CUDA_VISIBLE_DEVICES=$2 python3 main.py --config config/${CONFIG}.yaml \
    --name $1 \
    --njobs 8 \
    --seed 0 \
    --lm \
    --logdir ${DIR}/log/ \
    --ckpdir ${DIR}/ckpt/ \
    --outdir ${DIR}/result/ \
