FROM debian:bullseye AS builder

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
    PATH=$PATH:/usr/share/perl6/site/bin

LABEL maintainer="Dr Suman Khanal <suman81765@gmail.com>"

      
RUN buildDeps="gcc \
        libc6-dev \
        libencode-perl \
        libzstd-dev \
        make" \
    && apt-get update && apt-get install --yes --no-install-recommends $buildDeps \
    && apt-get install --yes curl git \
    && rm -rf /var/lib/apt/lists/* \
    && git clone -b master --single-branch --recurse-submodules https://github.com/rakudo/rakudo.git \
    && ( \
        cd rakudo \
        && perl Configure.pl --prefix=/usr --gen-moar --gen-nqp \
        --backends=moar --moar-option='--toolchain=gnu' --relocatable \
        && make && make install \
    ) \
    && rm -rf rakudo \
    && git clone -b master --single-branch https://github.com/ugexe/zef.git \
    && cd zef \
    && raku -I. bin/zef install . && cd .. && rm -rf zef \
    && zef install Linenoise App::Mi6 App::Prove6 \
    && apt-get purge -y --auto-remove $buildDeps

#For raku testing run: prove6 --lib t/
    
CMD ["raku", "--version"]


