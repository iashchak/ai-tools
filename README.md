# AI-based Question Answering System

This project aims to fine-tune some existing models from the Hugging Face Transformers library.
AS a source of data i used some public articles (questions for interview) from GitHub

## Table of Contents

- [Getting Started](#getting-started)
   - [Prerequisites](#prerequisites)
   - [Installation](#installation)
- [Usage](#usage)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [License](#license)

## The jedi way of building a QA system

1. Collect data (as such as possible)
2. Preprocess data (clean, turn it into question-answer pairs or dialogue)
3. Augment data (add noise, add duplicates, add outliers)
4. Split data (train, validation, test)
5. Configure model (choose model architecture, hyperparameters)
6. Train model (fit model to data)
7. Evaluate model (check model performance on validation data)

## Getting Started

Follow these steps to set up and run the project on your local machine.

1. Clone the repository:
   ```bash
   git clone git@github.com:iashchak/ai-tools.git
   ```

2. Change to the project directory:
   ```bash
   cd ai-tools
   ```

3. Install the required packages:
- Init a new conda environment with `environment.yml` file (preffered)
- Update current one with `environment.yml` file
   ```bash
   conda env update --file environment.yml
   ```


### Prerequisites

- Python 3.8 or higher
- PyTorch 1.9 or higher
- Hugging Face Transformers library


## Usage

To run the project, execute the Jupyter Notebook `notebooks/process_interview_questions`. This will download the dataset, create question-answer pairs, train the model, and test it with some example questions.

## Roadmap

- [x] Data collection
- [x] Dataset creation (question-answer pairs)
- [x] Model training using Hugging Face Transformers
- [x] Model evaluation and testing
- [X] Improve dataset quality with better question generation
- [ ] Increase the size and diversity of the dataset
- [ ] Improve model performance with hyperparameter tuning
- [ ] Implement a user-friendly interface for interacting with the model

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on how to contribute to the project.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
