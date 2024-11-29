-- Criação do banco de dados, usuário e permissões
CREATE DATABASE IF NOT EXISTS dvwa;

CREATE USER IF NOT EXISTS 'dvwa'@'%' IDENTIFIED BY 'p@ssw0rd';

GRANT ALL PRIVILEGES ON dvwa.* TO 'dvwa'@'%';

FLUSH PRIVILEGES;
