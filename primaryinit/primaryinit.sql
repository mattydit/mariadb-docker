CREATE USER 'replication_user'@'%' IDENTIFIED BY 'replsecret';
GRANT REPLICATION SLAVE ON *.* TO 'replication_user'@'%';

CREATE USER maxscale@'%' IDENTIFIED BY 'password';
GRANT SELECT ON mysql.* TO maxscale@'%';
GRANT SHOW DATABASES, SLAVE MONITOR ON *.* TO maxscale@'%';