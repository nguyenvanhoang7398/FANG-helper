export GLUE_DIR=GLUE
export TASK_NAME=STANCE2

python ./examples/run_glue.py \
  --model_type roberta \
  --model_name_or_path $TASK_NAME/roberta-large/ \
  --task_name $TASK_NAME \
  --do_eval \
  --max_seq_length 100 \
  --do_lower_case \
  --data_dir $GLUE_DIR/$TASK_NAME \
  --output_dir $TASK_NAME/roberta-large/
