# @Author: ahmedkammorah
# @Date:   2018-02-27 18:08:34
# @Last Modified by:   ahmedkammorah
# @Last Modified time: 2018-02-27 18:08:54

copy container_docker



cd container_docker
sh build_docker_image.sh 

# must do that to PWD be the parent of container dir
cd ../
sh container_docker/run_container.sh 

