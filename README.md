# Build image
```shell
docker build -t satisfactory .
```

# Run built image
```shell
mkdir data
docker run -p 15000:15000/udp -p 7777:7777/udp -p 15777:15777/udp -d --name=satisfactory -v $(pwd)/data:/home/steam/Satisfactory-dedicated satisfactory
```

# Run image with docker-compose
```shell
docker-compose up -d
```
