docker exec -it spark /bin/sh 

mkdir -p /metorikku/data/json/
mkdir -p /metorikku/data/schema/
mkdir -p /metorikku/data/output/

docker cp data/schema/schema.json spark:/metorikku/data/schema/
docker cp data/json/my-topicsolace-marx.FELIX_FROST+0+0000000104.json spark:/metorikku/data/json/

docker cp ingestion_job.yaml spark:/metorikku/
docker cp ingestion_metric.yaml spark:/metorikku/
