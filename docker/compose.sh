# Port allocation
# s3: 9000
# kubernetes: 9080
# airflow: 9082
# spark: 9090
# kafka: 9092

docker-compose -f s3/docker-compose.yml up -d
docker-compose -f kafka/docker-compose.yml up -d
docker-compose -f spark/docker-compose.yml up -d
docker-compose -f airflow/docker-compose.yml up -d
