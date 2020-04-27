FROM continuumio/miniconda3
LABEL maintainer="Rosa Trancoso <rosatrancoso@gmail.com>"

USER root

RUN conda config --add channels conda-forge
RUN conda install -y vim

COPY app.py /source/app/
COPY requirements.txt /source/app/
RUN conda install -y --file /source/app/requirements.txt

EXPOSE 8050
ENTRYPOINT python -u /source/app/app.py
