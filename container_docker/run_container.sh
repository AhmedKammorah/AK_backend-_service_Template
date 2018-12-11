# Run new container of backend image
docker stop ak_backend1
docker rm ak_backend1

docker run -ti -p 8005:8000 --name ak_backend1 -v "$PWD":/app ahmedkammorah/ak-backed-dev