FROM apache/airflow:2.0.0-python3.8

USER root

RUN curl -sSL https://get.docker.com/ | sh

RUN usermod -aG docker airflow

USER airflow
