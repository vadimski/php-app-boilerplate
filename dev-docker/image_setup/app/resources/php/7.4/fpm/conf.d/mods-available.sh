#!/bin/bash

###
# fpm setup
###
ln -s /etc/php/7.4/mods-available/mysqlnd.ini /etc/php/7.4/fpm/conf.d/10-mysqlnd.ini
ln -s /etc/php/7.4/mods-available/opcache.ini /etc/php/7.4/fpm/conf.d/10-opcache.ini 
ln -s /etc/php/7.4/mods-available/pdo.ini /etc/php/7.4/fpm/conf.d/10-pdo.ini 
ln -s /etc/php/7.4/mods-available/xml.ini /etc/php/7.4/fpm/conf.d/15-xml.ini 
ln -s /etc/php/7.4/mods-available/apcu.ini /etc/php/7.4/fpm/conf.d/20-apcu.ini 
ln -s /etc/php/7.4/mods-available/apcu_bc.ini /etc/php/7.4/fpm/conf.d/20-apcu_bc.ini 
ln -s /etc/php/7.4/mods-available/bcmath.ini /etc/php/7.4/fpm/conf.d/20-bcmath.ini 
ln -s /etc/php/7.4/mods-available/calendar.ini /etc/php/7.4/fpm/conf.d/20-calendar.ini 
ln -s /etc/php/7.4/mods-available/ctype.ini /etc/php/7.4/fpm/conf.d/20-ctype.ini 
ln -s /etc/php/7.4/mods-available/curl.ini /etc/php/7.4/fpm/conf.d/20-curl.ini 
ln -s /etc/php/7.4/mods-available/dom.ini /etc/php/7.4/fpm/conf.d/20-dom.ini 
ln -s /etc/php/7.4/mods-available/exif.ini /etc/php/7.4/fpm/conf.d/20-exif.ini 
ln -s /etc/php/7.4/mods-available/fileinfo.ini /etc/php/7.4/fpm/conf.d/20-fileinfo.ini 
ln -s /etc/php/7.4/mods-available/ftp.ini /etc/php/7.4/fpm/conf.d/20-ftp.ini 
ln -s /etc/php/7.4/mods-available/gettext.ini /etc/php/7.4/fpm/conf.d/20-gettext.ini 
ln -s /etc/php/7.4/mods-available/iconv.ini /etc/php/7.4/fpm/conf.d/20-iconv.ini 
ln -s /etc/php/7.4/mods-available/igbinary.ini /etc/php/7.4/fpm/conf.d/20-igbinary.ini 
ln -s /etc/php/7.4/mods-available/imap.ini /etc/php/7.4/fpm/conf.d/20-imap.ini 
ln -s /etc/php/7.4/mods-available/intl.ini /etc/php/7.4/fpm/conf.d/20-intl.ini 
ln -s /etc/php/7.4/mods-available/json.ini /etc/php/7.4/fpm/conf.d/20-json.ini 
ln -s /etc/php/7.4/mods-available/ldap.ini /etc/php/7.4/fpm/conf.d/20-ldap.ini 
ln -s /etc/php/7.4/mods-available/mbstring.ini /etc/php/7.4/fpm/conf.d/20-mbstring.ini 
ln -s /etc/php/7.4/mods-available/msgpack.ini /etc/php/7.4/fpm/conf.d/20-msgpack.ini 
ln -s /etc/php/7.4/mods-available/mysqli.ini /etc/php/7.4/fpm/conf.d/20-mysqli.ini 
ln -s /etc/php/7.4/mods-available/pdo_mysql.ini /etc/php/7.4/fpm/conf.d/20-pdo_mysql.ini 
ln -s /etc/php/7.4/mods-available/phar.ini /etc/php/7.4/fpm/conf.d/20-phar.ini 
ln -s /etc/php/7.4/mods-available/posix.ini /etc/php/7.4/fpm/conf.d/20-posix.ini 
ln -s /etc/php/7.4/mods-available/readline.ini /etc/php/7.4/fpm/conf.d/20-readline.ini 
ln -s /etc/php/7.4/mods-available/shmop.ini /etc/php/7.4/fpm/conf.d/20-shmop.ini 
ln -s /etc/php/7.4/mods-available/simplexml.ini /etc/php/7.4/fpm/conf.d/20-simplexml.ini 
ln -s /etc/php/7.4/mods-available/soap.ini /etc/php/7.4/fpm/conf.d/20-soap.ini 
ln -s /etc/php/7.4/mods-available/sockets.ini /etc/php/7.4/fpm/conf.d/20-sockets.ini 
ln -s /etc/php/7.4/mods-available/sysvmsg.ini /etc/php/7.4/fpm/conf.d/20-sysvmsg.ini 
ln -s /etc/php/7.4/mods-available/sysvsem.ini /etc/php/7.4/fpm/conf.d/20-sysvsem.ini 
ln -s /etc/php/7.4/mods-available/sysvshm.ini /etc/php/7.4/fpm/conf.d/20-sysvshm.ini 
ln -s /etc/php/7.4/mods-available/tokenizer.ini /etc/php/7.4/fpm/conf.d/20-tokenizer.ini
ln -s /etc/php/7.4/mods-available/xmlreader.ini /etc/php/7.4/fpm/conf.d/20-xmlreader.ini 
ln -s /etc/php/7.4/mods-available/xmlwriter.ini /etc/php/7.4/fpm/conf.d/20-xmlwriter.ini 
ln -s /etc/php/7.4/mods-available/xsl.ini /etc/php/7.4/fpm/conf.d/20-xsl.ini 
ln -s /etc/php/7.4/mods-available/zip.ini /etc/php/7.4/fpm/conf.d/20-zip.ini

ln -s /etc/php/7.4/mods-available/99-custom.ini /etc/php/7.4/fpm/conf.d/99-custom.ini
ln -s /etc/php/7.4/mods-available/20-xdebug.ini /etc/php/7.4/fpm/conf.d/20-xdebug.ini
ln -s /etc/php/7.4/mods-available/20-imagick.ini /etc/php/7.4/fpm/conf.d/20-imagick.ini

###
# cli setup
###
ln -s /etc/php/7.4/mods-available/mysqlnd.ini /etc/php/7.4/cli/conf.d/10-mysqlnd.ini
ln -s /etc/php/7.4/mods-available/opcache.ini /etc/php/7.4/cli/conf.d/10-opcache.ini
ln -s /etc/php/7.4/mods-available/pdo.ini /etc/php/7.4/cli/conf.d/10-pdo.ini
ln -s /etc/php/7.4/mods-available/xml.ini /etc/php/7.4/cli/conf.d/15-xml.ini
ln -s /etc/php/7.4/mods-available/apcu.ini /etc/php/7.4/cli/conf.d/20-apcu.ini
ln -s /etc/php/7.4/mods-available/apcu_bc.ini /etc/php/7.4/cli/conf.d/20-apcu_bc.ini
ln -s /etc/php/7.4/mods-available/bcmath.ini /etc/php/7.4/cli/conf.d/20-bcmath.ini
ln -s /etc/php/7.4/mods-available/calendar.ini /etc/php/7.4/cli/conf.d/20-calendar.ini
ln -s /etc/php/7.4/mods-available/ctype.ini /etc/php/7.4/cli/conf.d/20-ctype.ini
ln -s /etc/php/7.4/mods-available/curl.ini /etc/php/7.4/cli/conf.d/20-curl.ini
ln -s /etc/php/7.4/mods-available/dom.ini /etc/php/7.4/cli/conf.d/20-dom.ini
ln -s /etc/php/7.4/mods-available/exif.ini /etc/php/7.4/cli/conf.d/20-exif.ini
ln -s /etc/php/7.4/mods-available/fileinfo.ini /etc/php/7.4/cli/conf.d/20-fileinfo.ini
ln -s /etc/php/7.4/mods-available/ftp.ini /etc/php/7.4/cli/conf.d/20-ftp.ini
ln -s /etc/php/7.4/mods-available/gettext.ini /etc/php/7.4/cli/conf.d/20-gettext.ini
ln -s /etc/php/7.4/mods-available/iconv.ini /etc/php/7.4/cli/conf.d/20-iconv.ini
ln -s /etc/php/7.4/mods-available/igbinary.ini /etc/php/7.4/cli/conf.d/20-igbinary.ini
ln -s /etc/php/7.4/mods-available/imap.ini /etc/php/7.4/cli/conf.d/20-imap.ini
ln -s /etc/php/7.4/mods-available/intl.ini /etc/php/7.4/cli/conf.d/20-intl.ini
ln -s /etc/php/7.4/mods-available/json.ini /etc/php/7.4/cli/conf.d/20-json.ini
ln -s /etc/php/7.4/mods-available/ldap.ini /etc/php/7.4/cli/conf.d/20-ldap.ini
ln -s /etc/php/7.4/mods-available/mbstring.ini /etc/php/7.4/cli/conf.d/20-mbstring.ini
ln -s /etc/php/7.4/mods-available/msgpack.ini /etc/php/7.4/cli/conf.d/20-msgpack.ini
ln -s /etc/php/7.4/mods-available/mysqli.ini /etc/php/7.4/cli/conf.d/20-mysqli.ini
ln -s /etc/php/7.4/mods-available/pdo_mysql.ini /etc/php/7.4/cli/conf.d/20-pdo_mysql.ini
ln -s /etc/php/7.4/mods-available/phar.ini /etc/php/7.4/cli/conf.d/20-phar.ini
ln -s /etc/php/7.4/mods-available/posix.ini /etc/php/7.4/cli/conf.d/20-posix.ini
ln -s /etc/php/7.4/mods-available/readline.ini /etc/php/7.4/cli/conf.d/20-readline.ini
ln -s /etc/php/7.4/mods-available/shmop.ini /etc/php/7.4/cli/conf.d/20-shmop.ini
ln -s /etc/php/7.4/mods-available/simplexml.ini /etc/php/7.4/cli/conf.d/20-simplexml.ini
ln -s /etc/php/7.4/mods-available/soap.ini /etc/php/7.4/cli/conf.d/20-soap.ini
ln -s /etc/php/7.4/mods-available/sockets.ini /etc/php/7.4/cli/conf.d/20-sockets.ini
ln -s /etc/php/7.4/mods-available/sysvmsg.ini /etc/php/7.4/cli/conf.d/20-sysvmsg.ini
ln -s /etc/php/7.4/mods-available/sysvsem.ini /etc/php/7.4/cli/conf.d/20-sysvsem.ini
ln -s /etc/php/7.4/mods-available/sysvshm.ini /etc/php/7.4/cli/conf.d/20-sysvshm.ini
ln -s /etc/php/7.4/mods-available/tokenizer.ini /etc/php/7.4/cli/conf.d/20-tokenizer.ini
ln -s /etc/php/7.4/mods-available/xmlreader.ini /etc/php/7.4/cli/conf.d/20-xmlreader.ini
ln -s /etc/php/7.4/mods-available/xmlwriter.ini /etc/php/7.4/cli/conf.d/20-xmlwriter.ini
ln -s /etc/php/7.4/mods-available/xsl.ini /etc/php/7.4/cli/conf.d/20-xsl.ini
ln -s /etc/php/7.4/mods-available/zip.ini /etc/php/7.4/cli/conf.d/20-zip.ini

ln -s /etc/php/7.4/mods-available/99-custom.ini /etc/php/7.4/cli/conf.d/99-custom.ini
ln -s /etc/php/7.4/mods-available/20-xdebug.ini /etc/php/7.4/cli/conf.d/20-xdebug.ini
ln -s /etc/php/7.4/mods-available/20-imagick.ini /etc/php/7.4/cli/conf.d/20-imagick.ini