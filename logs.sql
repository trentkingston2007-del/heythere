CREATE TABLE `logs` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `username` VARCHAR(50) NOT NULL,
    `email` VARCHAR(100) DEFAULT NULL,
    `ip_address` VARCHAR(45) NOT NULL,
    `action` ENUM('register', 'login') NOT NULL,
    `status` ENUM('success', 'fail', 'pending', 'banned', 'suspended') NOT NULL,
    `reason` VARCHAR(255) DEFAULT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
