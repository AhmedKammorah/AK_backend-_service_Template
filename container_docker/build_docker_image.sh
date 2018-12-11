# Build Dev Image 
docker build -f Dockerfile-Dev -t ahmedkammorah/ak-backed-dev .


# Build django image
docker build -t ahmedkammorah/ak-backed .
