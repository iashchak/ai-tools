# AI Tools

This project aims to fine-tune the Databricks Dolly v2-3b transformer model for engaging in conversations about science fiction films. The model will be trained on a dataset generated from Wikipedia articles about this specific topic.
The project includes a Jupyter Notebook that outlines the steps to preprocess the data, fine-tune the model, and evaluate its performance.

## Jupyter Notebook Structure
The Jupyter Notebook is organized into the following sections:

1. Introduction
   A brief overview of the project's goals and the model being fine-tuned.
2. Importing Libraries
   Import all necessary Python libraries such as transformers, pandas, numpy, and torch.
3. Data Collection
   Code for downloading and processing the Wikipedia articles using the WikipediaBulkDownloader class provided in the first message.
4. Creating a Dialogue Dataset
   Code for generating question-answer pairs based on the Wikipedia articles and storing them in a text file.
5. Data Preprocessing
   Tokenizing the text using the appropriate tokenizer from the transformers library.
   Processing the dataset into input tokens (questions) and output tokens (answers).
6. Model Fine-tuning
   Code for fine-tuning the Databricks Dolly v2-3b model on the processed dataset using the Trainer method from the transformers library.
   Defining loss computation functions, an optimizer, and configuring hyperparameters such as the number of epochs, batch size, and learning rate.
7. Model Testing
   Code for evaluating the performance of the fine-tuned model by posing questions related to the topic of the articles and generating responses using the instructions provided in the second message.
8. Conclusion
   A summary of the project's results and any insights gained from fine-tuning and testing the model.
   To run the Jupyter Notebook, ensure that you have the necessary dependencies installed, such as transformers, pandas, numpy, and torch. You can install them using pip:

```bash
pip install -r requirements.txt
```

Once the dependencies are installed, you can open and execute the Jupyter Notebook by running:

```bash
jupyter notebook
```

and navigating to the notebook file in your browser.