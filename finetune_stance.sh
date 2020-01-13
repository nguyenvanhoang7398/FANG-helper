export GLUE_DIR=GLUE
export TASK_NAME=STANCE2

python ./examples/run_glue.py \
  --model_type roberta \
  --model_name_or_path roberta-large \
  --task_name $TASK_NAME \
  --do_train \
  --do_eval \
  --do_lower_case \
  --data_dir $GLUE_DIR/$TASK_NAME \
  --max_seq_length 80 \
  --per_gpu_train_batch_size 20 \
  --learning_rate 2e-5 \
  --num_train_epochs 10 \
  --output_dir $TASK_NAME/roberta-large/ \
  --logging_steps 200 \
  --save_steps 200 \
  --evaluate_during_training
