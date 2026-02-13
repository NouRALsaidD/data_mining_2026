ENV_NAME=Data_Mining_2026_Project_Env
DATASET=tunguz/online-retail

ifneq (,$(wildcard .env))
include .env
export
endif

.PHONY: create remove install-kernel download-data

create:
	conda env create -f environment.yml

remove:
	@echo "Removing conda environment: $(ENV_NAME)"
	-conda env remove -n $(ENV_NAME)

install-kernel:
	conda run -n $(ENV_NAME) python -m ipykernel install --user \
		--name=$(ENV_NAME) \
		--display-name "Python ($(ENV_NAME))"

download-data:
	@if [ -z "$(KAGGLE_API_TOKEN)" ]; then \
		echo "Error: KAGGLE_API_TOKEN is not set."; \
		exit 1; \
	fi
	conda run -n $(ENV_NAME) kaggle datasets download -d $(DATASET) -p data/raw --unzip
