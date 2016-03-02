FROM debian:latest
MAINTAINER Antoine Henning <henning.antoine@gmail.com>

# Install bmxlib dependencies
RUN apt-get update && apt-get install -y \
        git \
        g++ \
        make \
        pkg-config \
        autoconf \
        libtool \
        uuid-dev \
        liburiparser-dev \
        libexpat-dev && \
    apt-get upgrade -y && \
    apt-get autoclean -y && apt-get autoremove -y && apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*

# Install libMXF
RUN git clone http://git.code.sf.net/p/bmxlib/libmxf /usr/local/lib/bmxlib-libmxf && \
    cd /usr/local/lib/bmxlib-libmxf && \
    ./autogen.sh && \
    ./configure && \
    make && \
    make install && \
    /sbin/ldconfig

# Install libMXF++
RUN git clone http://git.code.sf.net/p/bmxlib/libmxfpp /usr/local/lib/bmxlib-libmxfpp && \
    cd /usr/local/lib/bmxlib-libmxfpp && \
    ./autogen.sh && \
    ./configure && \
    make && \
    make install && \
    /sbin/ldconfig

# Install bmx
RUN git clone http://git.code.sf.net/p/bmxlib/bmx /usr/local/lib/bmxlib-bmx && \
    cd /usr/local/lib/bmxlib-bmx && \
    ./autogen.sh && \
    ./configure && \
    make && \
    make install && \
    /sbin/ldconfig

CMD ["bash"]
