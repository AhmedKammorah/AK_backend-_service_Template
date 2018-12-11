# Backend service (python) template to be running using docker  
## Init
My docker project template for Python Backend Service/app 
including my Full enverironment for dev and production mode 

## Code Dir Tree
	./
		container_dokcer/
		AKService/    <Your main code dir> 
		Readme.md
		docker-entrypoint.sh

## Getting Start
* Copy This Repo into Your app Dir
	copy container_docker
* Build The images
```
    cd $PWD
    
	sh build_docker_image.sh 

```

* Start Container On Dev Mode 
```
    # must do that to PWD be the parent of container dir
	cd ../
	sh container_docker/run_container.sh
```
#### After that you will be inside the container 
so start generate the porject and work with it 

#### Start Container On Pro Mode 
```
    # must do that to PWD be the parent of container dir
	cd ../
	sh container_docker/run_container_pro.sh
```

