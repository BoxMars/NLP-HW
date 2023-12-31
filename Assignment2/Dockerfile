# Version 0.0.1
FROM ubuntu:14.04

# base tools
RUN apt-get update
RUN apt-get install -y \
   unzip \
   build-essential \
   wget \
   g++ \
   git \
   subversion \
   automake \
   libtool \
   zlib1g-dev \
   libboost-all-dev \
   libbz2-dev \
   liblzma-dev \
   python-dev \
   cmake

RUN mkdir -p /home/moses
WORKDIR /home/moses

# Build boost
#
# RUN wget http://downloads.sourceforge.net/project/boost/boost/1.55.0/boost_1_55_0.tar.gz
COPY ./boost_1_55_0.tar.gz /home/moses/
RUN tar zxvf boost_1_55_0.tar.gz
WORKDIR /home/moses/boost_1_55_0
RUN ./bootstrap.sh
RUN ./b2 -j8 --prefix=$PWD --libdir=$PWD/lib64 --layout=system link=static install || echo FAILURE

# Build cmph
#
WORKDIR /home/moses
RUN wget http://downloads.sourceforge.net/project/cmph/cmph/cmph-2.0.tar.gz
RUN tar zxvf cmph-2.0.tar.gz
WORKDIR /home/moses/cmph-2.0
RUN ./configure --prefix=/usr/local && make && make install prefix=/usr/local/cmph

# Build Moses
#
WORKDIR /home/moses
RUN git clone https://github.com/moses-smt/mosesdecoder.git
WORKDIR /home/moses/mosesdecoder
RUN ./bjam --with-boost=/home/moses/boost_1_55_0 --with-cmph=/usr/local/cmph -j8
# WORKDIR /home/moses
# RUN wget http://www.statmt.org/moses/download/sample-models.tgz
# RUN tar xzf sample-models.tgz
WORKDIR /home/moses
RUN git clone https://github.com/moses-smt/mgiza.git
WORKDIR /home/moses/mgiza/mgizapp
RUN cmake .
RUN make
RUN make install
