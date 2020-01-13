export GLUE_DIR=GLUE
export TASK_NAME=SST-2

python ./examples/run_glue.py \
  --model_type roberta \
  --model_name_or_path SENTIMENT_FNN/roberta-large/ \
  --task_name $TASK_NAME \
  --do_predict \
  --max_seq_length 80 \
  --do_lower_case \
  --data_dir $GLUE_DIR/SENTIMENT_FNN \
  --output_dir SENTIMENT_FNN/roberta-large/
