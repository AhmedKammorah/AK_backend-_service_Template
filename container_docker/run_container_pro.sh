# @Author: ahmedkammorah
# @Date:   2018-12-11 12:09:41
# @Last Modified by:   ahmedkammorah
# @Last Modified time: 2018-12-11 12:09:59
# Run new container of backend image
docker stop ak_backend1
docker rm ak_backend1

docker run -d -p 8005:8000 --name ak_backend1 -v "$PWD":/app ahmedkammorah/ak-backed