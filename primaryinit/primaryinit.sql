CREATE USER 'replication_user'@'%' IDENTIFIED BY 'replsecret';
GRANT REPLICATION SLAVE ON *.* TO 'replication_user'@'%';

CREATE USER 'maxscale'@'%' IDENTIFIED BY 'secret';
GRANT ALL PRIVILEGES ON *.* TO 'maxscale'@'%';