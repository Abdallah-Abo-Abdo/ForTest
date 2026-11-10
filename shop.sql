CREATE TABLE `customer`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` TEXT NOT NULL,
    `phone` TEXT NOT NULL
);
CREATE TABLE `orders`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `customer_id` BIGINT NOT NULL,
    `item` TEXT NOT NULL,
    `quantity` INT NOT NULL
);
ALTER TABLE
    `orders` ADD CONSTRAINT `orders_id_foreign` FOREIGN KEY(`id`) REFERENCES `customer`(`id`);