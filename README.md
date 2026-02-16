# Table of Contents
- [Table of Contents](#table-of-contents)
- [About](#about)
- [Setup and installation](#setup-and-installation)
    - [1: Install Conda](#1-install-conda)
    - [2: Clone the Repository](#2-clone-the-repository)
    - [3: Configure Kaggle API Token](#3-configure-kaggle-api-token)
    - [4: Create the Conda Environment](#4-create-the-conda-environment)
    - [5: Download dataset:](#5-download-dataset)
    - [6: Open in VS Code](#6-open-in-vs-code)
    - [How to add new requirements:](#how-to-add-new-requirements)
- [Windows systems](#windows-systems)
- [Authors and Contributors](#authors-and-contributors)



# About
Project for Data Mining Course at Aarhus University 2026

Dataset is an a UK online retail from kaggle: https://www.kaggle.com/datasets/tunguz/online-retail.



# Setup and installation
### 1: Install Conda
Download and install conda from: https://docs.conda.io/

### 2: Clone the Repository
run
````bash
git clone https://github.com/NouRALsaidD/data_mining_2026
cd data_mining_2026
````

### 3: Configure Kaggle API Token
**1**: Create an account / log in to Kaggle
**2**: Generate a new API token
**3**: Copy .env.example to .env by running:
```bash
cp .env.example .env
```

**4**: Add your token to .env:
`````ini
KAGGLE_API_TOKEN=your_token_here
`````

### 4: Create the Conda Environment
````bash
make create
````

### 5: Download dataset:
````bash
make download-data
````

### 6: Open in VS Code
**1**: Open the project folder in VS Code
**2**: Open a notebook (.ipynb)
**3**: Select the Conda environment as the kernel

### How to add new requirements:
**1**: add new dependency to environment.yml as such:

````yaml
dependencies:
    - plotly  # <-- new package
````

**2**: Recreate the environment (do either)
````bash
# Recreate
conda env create -f environment.yml

# Or update existing environment
conda env update -f environment.yml --prune
````

# Windows systems
I Updated them Makefile so hopefully it works on windows now, but have not checked if it still works on mac as well.

# Authors and Contributors
* Rasmus Skovgaard Pedersen
* Hjalte Vilford Vinther
* Nour Mamoun Abdul Rahman Al Said