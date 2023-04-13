# ROADMAP

As a team, we have identified the following steps to improve our AI model's capability to engage in conversations related to the topic of the Wikipedia articles provided. These steps aim to fine-tune the Databricks Dolly v2-3b model on the dataset generated from the Wikipedia articles about science fiction films.

Step 1: Create a Dialogue Dataset
We plan to create question-answer pairs based on the Wikipedia articles. The questions will be formulated around key facts from the articles, while the answers will provide information relevant to the questions. We will store these pairs in a text file, with each line containing a question followed by its corresponding answer.

Step 2: Data Preprocessing
Our next step is to process the dataset into a format suitable for training the model. We will utilize the tokenizer from the transformers library to tokenize the text. The processed data should contain input tokens (questions) and output tokens (answers).

Step 3: Fine-tuning the Model
We intend to fine-tune the pre-trained Databricks Dolly v2-3b model on the processed dataset. To accomplish this, we will use the Trainer method from the transformers library. We will need to define loss computation functions and an optimizer, as well as configure hyperparameters such as the number of epochs, batch size, and learning rate.

Step 4: Model Testing
After fine-tuning the model on the new dataset, we will evaluate its performance by posing questions related to the topic of the articles. We will use the instructions provided in the second message to generate responses with the fine-tuned model.

By completing these steps, we expect our model to be better equipped to engage in conversations related to the specified topic from the Wikipedia articles.