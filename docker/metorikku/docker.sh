docker exec -u root -it spark /bin/sh

mkdir -p /metorikku/data/json/
mkdir -p /metorikku/data/schema/
mkdir -p /metorikku/data/output/

docker cp data/schema/schema.json spark:/metorikku/data/schema/
docker cp data/json/data.json spark:/metorikku/data/json/

docker cp ingestion_job.yaml spark:/metorikku/
docker cp ingestion_metric.yaml spark:/metorikku/

# https://github.com/YotpoLtd/metorikku/releases/tag/v0.0.151/
docker cp metorikku-standalone_2.11.jar spark:/metorikku/

spark-submit --class com.yotpo.metorikku.Metorikku /metorikku/metorikku-standalone_2.11.jar -c /metorikku/ingestion_job.yaml
