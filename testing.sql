-- Create database
CREATE DATABASE IF NOT EXISTS project_6;
USE project_6;

-- Create audio_db table
CREATE TABLE IF NOT EXISTS audio_db (
    audio_id INT AUTO_INCREMENT PRIMARY KEY,
    audio_name VARCHAR(255) NOT NULL,
    audio_author VARCHAR(255) NOT NULL,
    audio_loc TEXT,
    audio_image TEXT,
    audio_cat VARCHAR(100) NOT NULL CHECK (audio_cat IN ('feluda', 'shanku', 'other')),
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data into audio_db
INSERT INTO audio_db (audio_name, audio_author, audio_loc, audio_image, audio_cat)
VALUES 
('Feluda - Episode 1', 'Satyajit Ray', 'path/to/episode1.mp3', 'path/to/episode1.jpg', 'feluda'),
('Shanku - Episode 1', 'Satyajit Ray', 'path/to/episode1.mp3', 'path/to/episode1.jpg', 'shanku'),
('Feluda - Episode 2', 'Satyajit Ray', 'path/to/episode2.mp3', 'path/to/episode2.jpg', 'feluda'),
('Shanku - Episode 2', 'Satyajit Ray', 'path/to/episode2.mp3', 'path/to/episode2.jpg', 'shanku');

-- Create comment_db table
CREATE TABLE IF NOT EXISTS comment_db (
    comment_id INT AUTO_INCREMENT PRIMARY KEY,
    comment_name VARCHAR(255) NOT NULL,
    comment_text TEXT,
    comment_ocup VARCHAR(255),
    comment_icon TEXT,
    audio_id INT,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (audio_id) REFERENCES audio_db(audio_id)
);

-- Create sample data for comments
INSERT INTO comment_db (comment_name, comment_text, comment_ocup, comment_icon, audio_id)
VALUES 
('John Doe', 'Great episode, really enjoyed it!', 'Listener', 'path/to/icon1.jpg', 1),
('Jane Doe', 'I love the voice acting in this one.', 'Listener', 'path/to/icon2.jpg', 2),
('Alice', 'Very thrilling story, can\'t wait for the next one.', 'Listener', 'path/to/icon3.jpg', 3);

-- Create save_db table
CREATE TABLE IF NOT EXISTS save_db (
    save_id INT AUTO_INCREMENT PRIMARY KEY,
    save_time TIME,
    count INT DEFAULT 0,
    audio_id INT,
    user_email VARCHAR(255),
    user_name VARCHAR(255),
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (audio_id) REFERENCES audio_db(audio_id)
);

-- Sample data for save_db
INSERT INTO save_db (save_time, count, audio_id, user_email, user_name)
VALUES 
('00:45:30', 1, 1, 'user1@example.com', 'user1'),
('01:10:15', 2, 2, 'user2@example.com', 'user2'),
('00:30:00', 3, 3, 'user3@example.com', 'user3');

-- Create user_register table
CREATE TABLE IF NOT EXISTS user_register (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(255) NOT NULL,
    user_email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    user_image TEXT,
    registration_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Sample data for user_register
INSERT INTO user_register (user_name, user_email, password, user_image)
VALUES 
('user1', 'user1@example.com', 'password123', 'path/to/user1.jpg'),
('user2', 'user2@example.com', 'password456', 'path/to/user2.jpg'),
('user3', 'user3@example.com', 'password789', 'path/to/user3.jpg');

-- Create user_activity table
CREATE TABLE IF NOT EXISTS user_activity (
    activity_id INT AUTO_INCREMENT PRIMARY KEY,
    audio_id INT,
    user_id INT,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (audio_id) REFERENCES audio_db(audio_id),
    FOREIGN KEY (user_id) REFERENCES user_register(user_id)
);

-- Sample data for user_activity
INSERT INTO user_activity (audio_id, user_id)
VALUES 
(1, 1),
(2, 2),
(3, 3);

-- Create a table for checking email
CREATE TABLE IF NOT EXISTS email_check (
    user_email VARCHAR(255) PRIMARY KEY,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Sample email check for a user
INSERT INTO email_check (user_email)
VALUES ('user1@example.com');

--making some change
