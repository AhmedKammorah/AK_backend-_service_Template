# inheret from ahmedkammorah/django
FROM ahmedkammorah/django
# author
MAINTAINER Ahmed Kammorah

RUN apt-get update

# Note Delete mysqlclient from requerments file 
RUN apt-get install libmysqlclient-dev -y
RUN pip install mysqlclient 


ONBUILD COPY . /app
ONBUILD RUN pip install -r requirements.txt
COPY . /app
#COPY requirements.txt /app
RUN pip install -r requirements.txt

EXPOSE 80 8000
# cd on this dir 
WORKDIR /app

# moved to docker entrypoint
#RUN cd /app/django-json-rpc
#RUN python setup.py install
#RUN cd /app



# Start With etryPoint 
COPY ./docker-entrypoint.sh /
RUN sudo chmod 771 /docker-entrypoint.sh

# main command when Run new container from The Image
CMD ["/bin/bash"]

#ENTRYPOINT ["/docker-entrypoint.sh"]


##Build
#  docker build -t ahmedkammorah/tscore .

##Run
# docker run -ti --rm -p 8000:8000 --name tscore -v "$PWD":/app -v /ts/workarea:/ts  ahmedkammorah/tscore

# Run with deatach mode  -d 
#  docker run -ti -p 8000:8000 --name tscore -v "$PWD":/app -v /ts/workarea:/ts -d ahmedkammorah/tscore

## attach to container  
# docker attach tscore

#docker exec -it tscore bash

