FROM node:4.2.2

RUN apt-get update
RUN apt-get install -y libicu-dev libfontconfig1-dev libjpeg-dev libfreetype6 libsqlite3-dev libssl-dev libpng-dev unzip

RUN mkdir /pjs2

# Download and extract PhantomJS
WORKDIR /pjs2
RUN curl -LSO https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.0.0-source.zip
RUN unzip phantomjs-2.0.0-source.zip

# Build it
WORKDIR  /pjs2/phantomjs-2.0.0
RUN ./build.sh --confirm --silent
RUN cp ./bin/phantomjs /usr/bin
RUN phantomjs -v

# Clean
RUN rm -rf /pjs2
