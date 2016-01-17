# docker-whminecraft

A very simple way of getting a Minecraft server that all your friends can connect to, powered by [Wormhole Network](https://wormhole.network). There's no need to know networking or open ports on any firewalls.

1. Sign up for a free account on [Wormhole Network](https://wormhole.network), create a hub and a hub user.
2. Clone this repo on your server.

        git clone https://github.com/pjperez/docker-whminecraft
    
        cd docker-whminecraft

3. Download your config and linuxconfig files from [Wormhole Network](https://wormhole.network) and place them in docker-whminecraft
4. Build docker-whminecraft

        sudo docker build -t wormhole/minecraft .

5. Make sure you've created `mkdir -p /mnt/docker` and run the Docker image. It will automatically connect to your hub in Wormhole Network and show you your server's IP address.

        sudo docker run -t -i --privileged=true -v=/mnt/docker:/data wormhole/minecraft

6. Connect your and your friend's machines to your hub in Wormhole Network with the SoftEther client: [Windows](https://wormhole.zendesk.com/hc/en-gb/articles/206613029), [Linux](https://wormhole.zendesk.com/hc/en-gb/articles/207287085).
![Minecraft server](http://i.imgur.com/CIKCgEB.png)
7. Play multiplayer Minecraft by using **direct connect** and Wormhole's assigned IP address for the server
![Minecraft server 2](http://i.imgur.com/bknjgUR.png)

The Minecraft server will show clients connected through the overlay network:

![Server logs](http://i.imgur.com/FFkfe65.png)

It works out of the box **on every single hosting, vps and cloud providers**. There's no other configuration to be done, anywhere.

## Credits

Based on the [work of Isaac Bythewood](https://github.com/pjperez/docker-minecraft) to create a very simple Minecraft server image for Docker.
