# AI-based Question Answering System

This project is an AI-based question answering system that uses fine-tuned language models to generate answers to questions based on a dataset of Wikipedia articles. The project includes data collection, dataset creation, and training of a language model for question answering.

## Table of Contents
- [Getting Started](#getting-started)
   - [Prerequisites](#prerequisites)
   - [Installation](#installation)
- [Usage](#usage)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [License](#license)

## Getting Started

Follow these steps to set up and run the project on your local machine.

### Prerequisites

- Python 3.8 or higher
- PyTorch 1.9 or higher
- Hugging Face Transformers library

### Installation

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

## Usage

To run the project, execute the Jupyter Notebook `notebooks/train.ipynb`. This will download the dataset, create question-answer pairs, train the model, and test it with some example questions.

## Roadmap

- [x] Data collection from Wikipedia
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
