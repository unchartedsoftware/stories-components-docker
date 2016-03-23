FROM node:4.2.6

# install Phantomjs
RUN wget http://cnpmjs.org/mirrors/phantomjs/phantomjs-2.1.1-linux-x86_64.tar.bz2
RUN tar -jxvf phantomjs-2.1.1-linux-x86_64.tar.bz2 \
    && cp phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/bin/ \
    && rm -rf phantomjs-2.1.1-linux-x86_64 phantomjs-2.1.1-linux-x86_64.tar.bz2

