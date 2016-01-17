# docker-whminecraft
<<<<<<< HEAD
<<<<<<< HEAD

A very simple way of getting a Minecraft server that all your friends can connect to, powered by Wormhole Network. There's no need to know networking or open ports on any firewalls.

1. Run the Docker image and it will automatically connect to your hub in Wormhole Network.
2. Connect your and your friend's machines to your hub in Wormhole Network with the SoftEther client: [Windows](https://wormhole.zendesk.com/hc/en-gb/articles/206613029), [Linux](https://wormhole.zendesk.com/hc/en-gb/articles/207287085).
3. Play by using **direct connect** and Wormhole's assigned IP address for the server

(http://i.imgur.com/CIKCgEB.png)

(http://i.imgur.com/bknjgUR.png)



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
=======
Docker image that connects to Wormhole's overlay network and starts a Minecraft server
>>>>>>> d2e84348a35fa4ac8c268a7c26f2b8755cc82cad
=======
Docker image that connects to Wormhole's overlay network and starts a Minecraft server
>>>>>>> d2e84348a35fa4ac8c268a7c26f2b8755cc82cad
