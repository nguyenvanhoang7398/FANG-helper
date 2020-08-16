# Relation filtering, Stance detection, Sentiment Classification
This repository implements additional functionalities for the work FANG: Leveraging Social Context for Fake News Detection Using Graph Representation, including
* Relation filtering
* Stance detection
* Sentiment Classification

The main repo in the work can be found [here](https://github.com/nguyenvanhoang7398/FANG)

This repository is based on [huggingface's transformers](https://github.com/huggingface/transformers).

## Usage
Untar datasets
```
tar xzvf GLUE.tar.gz
```

| Task | Description | Train bash script | Inference bash script | Data directory |
|-----|-----|-----|-----|-----|
| Relation filtering | Filter out user posts that is unrelated to the news title | finetune_relation.sh | infer_relation.sh | GLUE/RELATION |
| Stance detection | Predicting whether a user post supports/denies a news title | finetune_stance.sh | infer_stance.sh | GLUE/STANCE2 |
| Sentiment classification | Predict the sentiment score of user posts | finetune_yelp.sh | infer_yelp.sh | GLUE/YELP |
