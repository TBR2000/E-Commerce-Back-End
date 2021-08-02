DROP DATABASE IF EXISTS ecommerce_db;
CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE category(
  id INT NOT NULL AUTO_INCREMENT,
  category_name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE product(
  id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(100) NOT NULL,
  price DECIMAL(10,0) NOT NULL,
  stock INT default 10 NOT NULL
  category_id INT,
  PRIMARY KEY (id)
);

CREATE TABLE tag (
  id INT NOT NULL AUTO_INCREMENT,
  tag_name VARCHAR(100) NOT NULL
);

CREATE TABLE product_tag (
  id INT NOT NULL AUTO_INCREMENT,
  product_id INT,
  tag_id INT

);