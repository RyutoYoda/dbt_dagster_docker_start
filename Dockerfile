FROM python:3.12.0

USER root

RUN apt-get update && \
    apt-get -y install locales vim less && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TERM xterm

RUN pip install --upgrade pip setuptools
RUN pip install dbt-bigquery
RUN pip install dagster-dbt 
