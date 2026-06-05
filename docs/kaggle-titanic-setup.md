# Kaggle Titanic — Setup Guide

## Prerequisites

- Python 3.8+
- [Kaggle CLI](https://www.kaggle.com/docs/api) (`pip install kaggle`)

## Setup

1. **Generate API Token**
   - Go to [kaggle.com/settings](https://kaggle.com/settings)
   - Click "Create New Token"
   - Save the downloaded `kaggle.json`

2. **Configure API Key**
   ```bash
   mkdir -p ~/.kaggle
   mv ~/Downloads/kaggle.json ~/.kaggle/
   chmod 600 ~/.kaggle/kaggle.json  # Linux/macOS
   ```

3. **Download Titanic Data**
   ```bash
   cd /path/to/Raphasha27/kaggle-titanic
   kaggle competitions download -c titanic -p data/
   unzip data/titanic.zip -d data/
   ```

4. **Run the Solution**
   ```bash
   python src/titanic_solution.py
   ```

5. **Create Submission**
   ```bash
   python src/generate_submission.py
   kaggle competitions submit -c titanic -f submissions/submission.csv -m "Ensemble RF+GBM+ET+LR"
   ```

## Repo

Solution code: [github.com/Raphasha27/kaggle-titanic](https://github.com/Raphasha27/kaggle-titanic)
