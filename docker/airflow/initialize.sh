# _AIRFLOW_WWW_USER_USERNAME=airflow
# _AIRFLOW_WWW_USER_PASSWORD=airflow
docker-compose up airflow-init
docker-compose up -d
docker cp ./dags/sample.py airflow-webserver:/opt/airflow/dags
