CONDA ?= conda
ENV_NAME=Data_Mining_2026_Project_Env
DATASET=tunguz/online-retail

ifneq (,$(wildcard .env))
include .env
export
endif

.PHONY: create remove install-kernel download-data check-token

create:
	$(CONDA) env create -f environment.yml

remove:
	@echo Removing conda environment: $(ENV_NAME)
	-$(CONDA) env remove -n $(ENV_NAME)

install-kernel:
	$(CONDA) run -n $(ENV_NAME) python -m ipykernel install --user --name=$(ENV_NAME) --display-name "Python ($(ENV_NAME))"

check-token:
ifndef KAGGLE_API_TOKEN
	$(error KAGGLE_API_TOKEN is not set. Put it in .env or your environment)
endif

download-data: check-token
	$(CONDA) run -n $(ENV_NAME) kaggle datasets download -d $(DATASET) -p data/raw --unzip
