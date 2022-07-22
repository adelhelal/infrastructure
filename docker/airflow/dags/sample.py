import datetime

import pendulum

from airflow import DAG
from airflow.operators.bash import BashOperator
from airflow.operators.empty import EmptyOperator

with DAG(
    dag_id='sample_dag',
    schedule_interval='0 0 * * *',
    start_date=pendulum.datetime(2021, 1, 1, tz="UTC"),
    catchup=False,
    dagrun_timeout=datetime.timedelta(minutes=60),
    tags=['sample', 'sample2'],
    params={"sample_key": "sample_value"},
) as dag:
    first_step = BashOperator(
        task_id='first_step',
        bash_command='echo "my start"',
    )

    last_step = BashOperator(
        task_id='last_step',
        bash_command='echo "my end"; exit 99;',
    )

    first_step >> last_step

if __name__ == "__main__":
    dag.cli()
