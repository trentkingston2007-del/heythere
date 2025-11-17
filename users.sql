CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    rank ENUM('user','moderator','admin','owner') DEFAULT 'user',
    status ENUM('active','banned','suspended','pending') DEFAULT 'pending'
);
