FROM debian:bookworm AS builder

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    PANDOC=2.19

RUN apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/* \
  && wget https://github.com/jgm/pandoc/releases/download/${PANDOC}/pandoc-${PANDOC}-1-amd64.deb \
  && dpkg -i pandoc-${PANDOC}-1-amd64.deb && rm pandoc-${PANDOC}-1-amd64.deb
  

FROM builder AS build1

ENV TERM=xterm \
    RAKUDO=2022.07 \
    PATH=$PATH:/usr/share/perl6/site/bin

LABEL maintainer="Dr Suman Khanal <suman81765@gmail.com>"
      
RUN buildDeps="gcc \
        libc6-dev \
        libencode-perl \
        libzstd-dev \
        make" \
    && apt-get update && apt-get install -y --no-install-recommends $buildDeps \
    && apt-get install -y git nano curl \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir rakudo \
    && wget -O rakudo.tar.gz https://github.com/rakudo/rakudo/releases/download/${RAKUDO}/rakudo-${RAKUDO}.tar.gz \
    && tar xzf rakudo.tar.gz --strip-components=1 -C rakudo \
    && ( \
        cd rakudo \
        && perl Configure.pl --prefix=/usr --gen-moar --gen-nqp \
        --backends=moar --moar-option='--toolchain=gnu' --relocatable \
        && make && make install \
    ) \
    && rm -rf rakudo rakudo.tar.gz \
    && git clone -b master --single-branch https://github.com/ugexe/zef.git \
    && cd zef \
    && raku -I. bin/zef install . && cd .. && rm -rf zef \
    && zef install Linenoise App::Mi6 App::Prove6 \
    && apt-get purge -y --auto-remove $buildDeps
    
    
 #--no-install-recommends
   
CMD ["raku", "--version"]