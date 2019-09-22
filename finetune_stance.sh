export GLUE_DIR=GLUE
export TASK_NAME=STANCE

python ./examples/run_glue.py \
  --model_type xlnet \
  --model_name_or_path xlnet-base-cased \
  --task_name $TASK_NAME \
  --do_train \
  --do_eval \
  --do_lower_case \
  --data_dir $GLUE_DIR/$TASK_NAME \
  --max_seq_length 128 \
  --per_gpu_train_batch_size 32 \
  --learning_rate 2e-5 \
  --num_train_epochs 3.0 \
  --output_dir /tmp/$TASK_NAME/