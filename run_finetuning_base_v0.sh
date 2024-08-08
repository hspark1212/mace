#!/bin/bash
# TODO: replace val to test
mace_run_train \
  --name="mace_gold_odac_v0_base" \
  --foundation_model="medium" \
  --train_file="dataset/gold-odac-2024/v0/train.xyz" \
  --valid_file="dataset/gold-odac-2024/v0/val.xyz" \
  --test_file="dataset/gold-odac-2024/v0/test.xyz" \
  --energy_weight=1.0 \
  --forces_weight=0.001 \
  --atomic_numbers="foundation" \
  --E0s="foundation" \
  --lr=1e-4 \
  --weight_decay=1e-6 \
  --error_table='PerAtomMAE' \
  --scaling="rms_forces_scaling" \
  --batch_size=4 \
  --valid_batch_size=2 \
  --max_num_epochs=10 \
  --ema \
  --ema_decay=0.99 \
  --amsgrad \
  --default_dtype="float32" \
  --device=cuda \
  --eval_interval=1 \
  --seed=42 