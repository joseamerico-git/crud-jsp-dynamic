CREATE DATABASE jsp;
use jsp;

CREATE TABLE usuario(
ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
LOGIN VARCHAR(100),
PASSWORD VARCHAR(100),
ROLE VARCHAR(20)
);

CREATE TABLE cliente(
    codigo INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100)

);

