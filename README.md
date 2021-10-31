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

Create the data directory:
```shell
mkdir data
```


```shell
docker-compose up -d
```

If you want to use docker-compose with the content of this repository, change this line:
```yaml
image: ghcr.io/lemyst/satisfactory-server:latest
```
by
```yaml
build: .
```
