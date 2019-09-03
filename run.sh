docker build -f .\Dockerfile.php56 -t php56:latest .\
docker build -f .\Dockerfile.php71 -t php71:latest .\
docker build -f .\Dockerfile.php72 -t php72:latest .\
docker build -f .\Dockerfile.php73 -t php73:latest .\

docker run php56:latest
docker run php71:latest
docker run php72:latest
docker run php73:latest
