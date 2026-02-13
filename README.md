# data_mining_2026
Project for Data Mining Course at Aarhus University 2026

Dataset is an a UK online retail from kaggle: https://www.kaggle.com/datasets/tunguz/online-retail.


# Setup/installation

### 1: Install Conda
Download and install conda from: https://docs.conda.io/

### 2: Clone the Repository
run
````
git clone https://github.com/NouRALsaidD/data_mining_2026
cd data_mining_2026
````

### 3: Configure Kaggle API Token
**1**: Create an account / log in to Kaggle
**2**: Generate a new API token
**3**: Copy .env.example to .env by running:
```
cp .env.example .env
````
**4**: Add your token to .env:
`````
KAGGLE_API_TOKEN=your_token_here
`````

### 4: Create the Conda Environment
````
make create
````

### 5: Download dataset:
````
make download-data
````

### 6: Open in VS Code
**1**: Open the project folder in VS Code
**2**: Open a notebook (.ipynb)
**3**: Select the Conda environment as the kernel

### How to add new requirements:
**1**: add new dependency to environment.yml as such:

````
dependencies:
    - plotly  # <-- new package
````

**2**: Recreate the environment (do either)
````
# Recreate
conda env create -f environment.yml

# Or update existing environment
conda env update -f environment.yml --prune
````

