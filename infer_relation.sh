export GLUE_DIR=GLUE
export TASK_NAME=RELATION

python ./examples/run_glue.py \
  --model_type roberta \
  --model_name_or_path $TASK_NAME/roberta-large/ \
  --task_name $TASK_NAME \
  --do_predict \
  --max_seq_length 80 \
  --do_lower_case \
  --data_dir $GLUE_DIR/$TASK_NAME \
  --output_dir $TASK_NAME/roberta-large/
