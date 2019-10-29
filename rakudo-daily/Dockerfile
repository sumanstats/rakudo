FROM debian:sid

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    PANDOC=2.7.3

ENV PATH=$PATH:/usr/share/perl6/site/bin

LABEL maintainer="Dr Suman Khanal <suman81765@gmail.com>"


      
RUN buildDeps="gcc \
        libc6-dev \
        libencode-perl \
        wget \
        make" \
    && apt-get update && apt-get install --yes --no-install-recommends $buildDeps \
    && apt-get install --yes curl git \
    && rm -rf /var/lib/apt/lists/* \
    && git clone https://github.com/rakudo/rakudo.git \
    && ( \
        cd rakudo \
        && perl Configure.pl --prefix=/usr --gen-moar --backends=moar \
        && make && make install \
    ) \
    && rm -rf rakudo \
    && git clone https://github.com/ugexe/zef.git \
    && cd zef \
    && perl6 -I. bin/zef install . && cd .. && rm -rf zef \
    && zef install Linenoise App::Mi6 App::Prove6 \
    && wget https://github.com/jgm/pandoc/releases/download/${PANDOC}/pandoc-${PANDOC}-1-amd64.deb \
    && dpkg -i pandoc-${PANDOC}-1-amd64.deb && rm pandoc-${PANDOC}-1-amd64.deb \
    && apt-get purge -y --auto-remove $buildDeps

#For raku testing run ===> $ prove6 --lib t/
    
CMD ["perl6", "--version"]
