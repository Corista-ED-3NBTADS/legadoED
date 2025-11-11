CREATE DATABASE IF NOT EXISTS coral;
USE coral;

CREATE TABLE IF NOT EXISTS usuario (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(100) NOT NULL
);

INSERT INTO usuario (username, password) VALUES ('admin', 'admin123')
ON DUPLICATE KEY UPDATE username=username;
