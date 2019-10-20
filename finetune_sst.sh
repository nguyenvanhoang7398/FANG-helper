export GLUE_DIR=GLUE
export TASK_NAME=SST-2

python ./examples/run_glue.py \
  --model_type roberta \
  --model_name_or_path roberta-base \
  --task_name $TASK_NAME \
  --do_train \
  --do_eval \
  --do_lower_case \
  --data_dir $GLUE_DIR/SENTIMENT_FNN \
  --max_seq_length 128 \
  --per_gpu_train_batch_size 32 \
  --learning_rate 2e-5 \
  --num_train_epochs 5.0 \
  --output_dir SENTIMENT_FNN/roberta/
