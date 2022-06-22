CREATE DATABASE IF NOT EXISTS `app`;
CREATE USER 'app'@'%' IDENTIFIED WITH mysql_native_password BY 'app';
GRANT ALL ON `app`.* TO 'app'@'%';
FLUSH PRIVILEGES;