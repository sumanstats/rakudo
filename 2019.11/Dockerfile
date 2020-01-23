FROM debian:sid

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    TERM=xterm \
    PANDOC=2.9.1 \
    RAKUDO=2019.11


ENV PATH=$PATH:/usr/share/perl6/site/bin

LABEL maintainer="Dr Suman Khanal <suman81765@gmail.com>"
      
RUN buildDeps="gcc \
        libc6-dev \
        libencode-perl \
        wget \
        make" \
    && apt-get update && apt-get install -y --no-install-recommends $buildDeps \
    && apt-get install -y git nano curl \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir rakudo \
    && wget -O rakudo.tar.gz https://github.com/rakudo/rakudo/releases/download/${RAKUDO}/rakudo-${RAKUDO}.tar.gz \
    && tar xzf rakudo.tar.gz --strip-components=1 -C rakudo \
    && ( \
        cd rakudo \
        && perl Configure.pl --prefix=/usr --gen-moar --backends=moar --relocatable \
        && make && make install \
    ) \
    && rm -rf rakudo rakudo.tar.gz \
    && git clone -b master --single-branch https://github.com/ugexe/zef.git \
    && cd zef \
    && raku -I. bin/zef install . && cd .. && rm -rf zef \
    && zef install Linenoise App::Mi6 App::Prove6 \
    && wget https://github.com/jgm/pandoc/releases/download/${PANDOC}/pandoc-${PANDOC}-1-amd64.deb \
    && dpkg -i pandoc-${PANDOC}-1-amd64.deb && rm pandoc-${PANDOC}-1-amd64.deb \
    && apt-get purge -y --auto-remove $buildDeps
    
    
 #--no-install-recommends  
   
CMD ["raku", "--version"]
