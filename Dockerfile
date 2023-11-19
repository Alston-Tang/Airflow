FROM apache/airflow:latest
ADD requirements.txt . 
RUN pip install apache-airflow==${AIRFLOW_VERSION} -r requirements.txt

USER root
RUN apt-get update
RUN apt-get install -y cmake build-essential
