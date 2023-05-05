# bearai-api

Bearbot-api is an api service built on top of fastapi. Github Action will package the application into an image (accessible via the packages section on the left) 

## Installation
Docker or Podman

## Usage
For downloading the image:
```
docker pull ghcr.io/heiyiu/bearai-api:main
```
For running the image in the background:
```
docker run -e DISCORD_BOT_TOKEN=YOURTOKEN -d -it -p 8000:8000 ghcr.io/heiyiu/bearai-api:main
```
