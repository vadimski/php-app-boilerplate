FROM ubuntu:20.04

MAINTAINER vadeemk@gmail.com

# so we won't get errors related to interactive mode
ENV DEBIAN_FRONTEND noninteractive
ENV PHPIZE_DEPS autoconf cmake file g++ gcc libc-dev make git pkgconf re2c
ENV COMPOSER_PROCESS_TIMEOUT 600

SHELL ["/bin/bash", "-c"]

# setting up package mirror
RUN apt-get update -y  && apt-get install -y \
        apt-utils \
        apt-transport-https \
        wget \
        curl \
        zlib1g \
        zlib1g-dev \
        libsqlite3-dev \
        sqlite3 \
        build-essential \
    && rm -rf /var/lib/apt/lists/*

# setting up package
RUN apt-get update -y && apt-get install -y dirmngr debian-keyring debian-archive-keyring libmailtools-perl \
    # do not add packages here
    libproc-wait3-perl libmath-basecnv-perl libtemplate-perl \
    # do not add packages here
    libyaml-syck-perl zabbix-agent dnsmasq postfix postfix-pcre \
    # do not add packages here
    openssh-server sudo toilet update-notifier-common tzdata \
    # do not add packages here
    mailutils lbzip2 dnsutils lsof curl pigz zsh vim rsync git libpng-dev \
    # do not add packages here
    rsyslog rsyslog-relp php7.4-cli php7.4-fpm php-apcu-bc nginx \
    # do not add packages here
    python3 python3-git python3-yaml php7.4-bcmath php7.4-curl php7.4-imap \
    # do not add packages here
    php7.4-intl php7.4-ldap php7.4-mbstring php7.4-soap \
    # do not add packages here
    php7.4-xml php7.4-xsl php7.4-zip php7.4-mysql php7.4-gd  php7.4-imagick -f \
    # do not add packages here
    && rm -rf /var/lib/apt/lists/*


RUN apt-get update -y && apt-get install -y htop telnet putty-tools php7.4-xdebug \
    screen ca-certificates sudo toilet openjdk-8-jre-headless unzip supervisor net-tools links nfs-common \
    && rm -rf /var/lib/apt/lists/*

# end of setting up package mirror
RUN apt-get update -y && apt-get -y install gnupg
#RUN curl -sSL https://deb.nodesource.com/setup_14.x  | bash -
#RUN apt-get -y install nodejs
#RUN npm install yarn@1.22.10 -g
#yarn add @symfony/webpack-encore --dev

# composer compass
RUN curl -sS https://getcomposer.org/installer -o composer-setup.php \
    && sudo -H php composer-setup.php --install-dir=/usr/local/bin --filename=composer
#RUN curl -sSL https://rvm.io/mpapis.asc | gpg --import -
#RUN curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -
#RUN curl -sSL https://get.rvm.io | bash -s stable --ruby
#RUN echo 'source /usr/local/rvm/scripts/rvm' >> /etc/bash.bashrc


#RUN rvm && gem install compass \
#    && update-alternatives --install /usr/bin/ruby ruby `which ruby` 10 \
#    && update-alternatives --install /usr/local/bin/compass compass `which compass` 10 \
#


RUN mkdir -p /var/run/php/
RUN chmod -R 700 /var/run/php/
# setup php fpm
RUN rm /etc/php/7.4/fpm/*.ini
RUN rm /etc/php/7.4/fpm/*.conf
RUN rm /etc/php/7.4/fpm/conf.d/*
RUN rm /etc/php/7.4/cli/conf.d/*
COPY ./resources/php/7.4/fpm/*.ini /etc/php/7.4/fpm/
COPY ./resources/php/7.4/fpm/*.conf /etc/php/7.4/fpm/
COPY ./resources/php/7.4/fpm/pool.d/*.conf /etc/php/7.4/fpm/pool.d/
COPY ./resources/php/7.4/fpm/conf.d/mods-available.sh /tmp
COPY ./resources/php/7.4/fpm/conf.d/99-custom.ini /etc/php/7.4/mods-available

# setup PHP gd
COPY ./resources/php/7.4/fpm/conf.d/20-gd.ini /etc/php/7.4/mods-available
#COPY ./resources/php/7.4/fpm/conf.d/20-gd.ini /etc/php/7.4/cli/conf.d
#
COPY ./resources/php/7.4/fpm/conf.d/20-imagick.ini /etc/php/7.4/mods-available
#COPY ./resources/php/7.4/fpm/conf.d/20-imagick.ini /etc/php/7.4/cli/conf.d


# setup PHP xdebug
COPY ./resources/php/7.4/fpm/conf.d/20-xdebug.ini /etc/php/7.4/mods-available
COPY ./resources/sys/xdebug_service /etc/init.d/xdebug
RUN chmod +x /etc/init.d/xdebug
COPY ./resources/sys/xdebug_for_commandline /bin/xdebug
RUN chmod +x /bin/xdebug
RUN /bin/xdebug

# setup php modules links (including xdebug)
RUN chmod +x /tmp/mods-available.sh && /tmp/mods-available.sh && rm /tmp/mods-available.sh
RUN mkdir -p /run/php

# setup nginx
COPY ./resources/nginx/*.conf /etc/nginx/
## no point of symlinks for dev
RUN mkdir -p /etc/nginx/sites-enabled
RUN mkdir -p /var/nginx/client_body_temp
RUN mkdir -p /var/nginx/proxy_temp
COPY ./resources/nginx/sites-available/*.conf /etc/nginx/sites-enabled/

# copy the setup script
RUN mkdir -p /opt/app/setup
RUN chmod -R 700 /opt/app
COPY ./resources/sys/setup.sh /opt/app/setup
RUN chmod 700 /opt/app/setup/setup.sh

# setup supervisor
COPY ./resources/supervisor/supervisord.conf /etc/supervisor/supervisord.conf

WORKDIR /var/www/app

# final command
CMD /usr/bin/supervisord -c /etc/supervisor/supervisord.conf