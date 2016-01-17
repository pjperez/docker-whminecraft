# docker-whminecraft

A very simple way of getting a Minecraft server that all your friends can connect to, powered by Wormhole Network. There's no need to know networking or open ports on any firewalls.

1. Run the Docker image and it will automatically connect to your hub in Wormhole Network and show you your server's IP address.
2. Connect your and your friend's machines to your hub in Wormhole Network with the SoftEther client: [Windows](https://wormhole.zendesk.com/hc/en-gb/articles/206613029), [Linux](https://wormhole.zendesk.com/hc/en-gb/articles/207287085).
3. Play multiplayer Minecraft by using **direct connect** and Wormhole's assigned IP address for the server

![Minecraft server](http://i.imgur.com/CIKCgEB.png)

![Server logs](http://i.imgur.com/FFkfe65.png)

![Minecraft server 2](http://i.imgur.com/bknjgUR.png)

It works out of the box. There's no other configuration to be done, anywhere.

## Building docker-minecraft

Running this will build you a docker image with the latest version of both
docker-minecraft and Minecraft itself.

    git clone https://github.com/pjperez/docker-whminecraft
    cd docker-minecraft
    sudo docker build -t wormhole/minecraft .

## Running docker-minecraft

First be sure your mounted directory on your host machine is
already created before running `mkdir -p /mnt/docker`.

    sudo docker run -t -i --privileged=true -v=/mnt/docker:/data wormhole/minecraft

## Credits

Based on the [work of Isaac Bythewood](https://github.com/pjperez/docker-minecraft) to create a very simple Minecraft server image for Docker.
