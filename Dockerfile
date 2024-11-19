FROM continuumio/miniconda3

RUN mkdir -p NF_Conv_Paper

COPY . /NF_Conv_Paper
WORKDIR /NF_Conv_Paper

RUN conda env update --file environment.yml

RUN echo "conda activate NF_Conv_Paper" >> ~/.bashrc
SHELL ["/bin/bash", "--login", "-c"]

RUN pre-commit install
