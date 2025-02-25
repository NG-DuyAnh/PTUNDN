-- Create the database
CREATE DATABASE btvn;

-- Select the database to use
USE btvn;

-- Create the users table
CREATE TABLE users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Create the roles table with a foreign key to users
CREATE TABLE roles (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT NOT NULL,
    role_name VARCHAR(255) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Insert users
INSERT INTO users (username, password) VALUES 
('user', '$2a$10$UlG5Ox1uZ2ftxb9biv8I4ea..U6Wftb/0PHPPsZ1uoJacb8tNwy06'),
('admin', '$2a$10$RJdUOIYHk4CWPTm84sAoc.a.4diAA7lw/eQyjyZQ0XkATZ6jpkY/W');

-- Insert roles with correct user_id
INSERT INTO roles (user_id, role_name) VALUES (1, 'USER'), (2, 'ADMIN');
