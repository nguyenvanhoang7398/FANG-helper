export GLUE_DIR=GLUE
export TASK_NAME=STANCE

python ./examples/run_glue.py \
  --model_type roberta \
  --model_name_or_path SENTIMENT_FNN/roberta/ \
  --task_name $TASK_NAME \
  --do_predict \
  --do_lower_case
