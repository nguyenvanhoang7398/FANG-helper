export GLUE_DIR=GLUE
export TASK_NAME=SST-2

python ./examples/run_glue.py \
  --model_type roberta \
  --model_name_or_path YELP/roberta-large/ \
  --task_name $TASK_NAME \
  --do_predict \
  --max_seq_length 80 \
  --do_lower_case \
  --data_dir $GLUE_DIR/YELP \
  --output_dir YELP/roberta-large/ \
  --predict_output_mode regression