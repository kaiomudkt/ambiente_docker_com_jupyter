# Use a imagem base do Jupyter SciPy Notebook
FROM quay.io/jupyter/scipy-notebook:2024-03-14

USER root

# Copia os arquivos de requirements.txt para o diretório de trabalho
COPY requirements.txt .

# Instala as dependências listadas no requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Instala Kaggle, para poder fazer download do dataset
RUN pip install --upgrade --force-reinstall --no-deps kaggle

USER jovyan
