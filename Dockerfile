#
# Base Ubuntu + SoftEther VPN + Wormhole + Minecraft Server
# (https://wormhole.network).
#
# Authors: Pedro Perez
# Updated: Jan 16th, 2016
# Require: Docker (http://www.docker.io/)
# -----------------------------------------------------------------------------


# Base system is the LTS version of Ubuntu.
FROM   ubuntu:14.04


# Let's keep everything tidy
WORKDIR /usr/local/vpnclient

# Download and install everything from the repos.
RUN    apt-get --yes update; apt-get --yes upgrade; apt-get --yes install software-properties-common
RUN    sudo apt-add-repository --yes ppa:webupd8team/java; apt-get --yes update
RUN    echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections  && \
       echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections  && \
       apt-get --yes install curl oracle-java8-installer gcc make wget

# Download and install the needed tools
RUN     wget https://whdowns.blob.core.windows.net/whclient/softether-vpnclient-v4.19-9599-beta-2015.10.19-linux-x64-64bit.tar.gz -O /tmp/softether-vpnclient.tar.gz &&\
        tar -xzvf /tmp/softether-vpnclient.tar.gz -C /usr/local/ &&\
        rm /tmp/softether-vpnclient.tar.gz &&\
        make i_read_and_agree_the_license_agreement 

RUN mv /sbin/dhclient /usr/sbin/dhclient

# Load in all of our config files.
ADD    ./scripts/start /start
ADD    ./linuxconfig /usr/local/vpnclient/linuxconfig
ADD    ./*.vpn /usr/local/vpnclient/

# Fix all permissions
RUN    chmod +x /start

# /data contains static files and database
VOLUME ["/data"]

# /start runs it.
CMD    ["/start"]
