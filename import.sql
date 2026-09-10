DROP DATABASE IF EXISTS `pcbuilder`;

CREATE DATABASE `pcbuilder`;

USE `pcbuilder`;

CREATE TABLE `cpu` (
    `id` MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Naam` VARCHAR(45) NOT NULL,
    `Cores` INTEGER NOT NULL,
    `Platform` VARCHAR(10) NOT NULL,
    `TDP` VARCHAR(4) NOT NULL,
    `Clock` VARCHAR(10) NOT NULL,
    `Prijs` VARCHAR(10) NOT NULL,
    `Graphics` VARCHAR(10),
    `Architecture` VARCHAR(5) NOT NULL,
    `Merk` VARCHAR(50) NOT NULL,
    `image_url` VARCHAR(500)
);

CREATE TABLE `gpu` (
    `id` MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Naam` VARCHAR(100) NOT NULL,
    `Merk` VARCHAR(50) NOT NULL,
    `Chipset` VARCHAR(100) NOT NULL,
    `Vram GB` INT NOT NULL,
    `Base Clock` DECIMAL(6,2) NOT NULL,    
    `Boost Clock` DECIMAL(6,2) NOT NULL,    
    `TDP` INT NOT NULL,
    `Prijs` DECIMAL(10,2) NOT NULL,
    `image_url` VARCHAR(500)
);

CREATE TABLE `ram` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `Naam` VARCHAR(100) NOT NULL,
    `Merk` VARCHAR(50) NOT NULL,
    `Capaciteit GB` INT NOT NULL,
    `Sticks` INT NOT NULL,
    `Speed Mhz` INT NOT NULL,
    `Type` VARCHAR(20) NOT NULL,            
    `Prijs` DECIMAL(10,2) NOT NULL,
    `image_url` VARCHAR(500)
);

CREATE TABLE `storage` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `Naam` VARCHAR(100) NOT NULL,
    `Merk` VARCHAR(50) NOT NULL,
    `Type` VARCHAR(50) NOT NULL,          
    `Capaciteit GB` INT NOT NULL,
    `Interface` VARCHAR(50) NOT NULL,       
    `Prijs` DECIMAL(10,2) NOT NULL,
    `image_url` VARCHAR(500)
);

CREATE TABLE `motherboard` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `Naam` VARCHAR(100) NOT NULL,
    `Merk` VARCHAR(50) NOT NULL,
    `Socket` VARCHAR(50) NOT NULL,
    `Chipset` VARCHAR(50) NOT NULL,
    `Form Factor` VARCHAR(50) NOT NULL,     
    `Ram Type` VARCHAR(20) NOT NULL,
    `Max Ram` INT NOT NULL,                
    `Prijs` DECIMAL(10,2) NOT NULL,
    `image_url` VARCHAR(500)
);

CREATE TABLE `psu` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `Naam` VARCHAR(100) NOT NULL,
    `Merk` VARCHAR(50) NOT NULL,
    `Wattage` INT NOT NULL,
    `Efficieny Rating` VARCHAR(50) NOT NULL,  
    `modular` BOOLEAN NOT NULL,
    `Prijs` DECIMAL(10,2) NOT NULL,
    `image_url` VARCHAR(500)
);

CREATE TABLE `coolers` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `Naam` VARCHAR(100) NOT NULL,
    `Merk` VARCHAR(50) NOT NULL,
    `Type` VARCHAR(50) NOT NULL,          
    `Fan RPM` INT NOT NULL,
    `Supported Sockets` VARCHAR(255) NOT NULL,
    `Prijs` DECIMAL(10,2) NOT NULL,
    `image_url` VARCHAR(500)
);

CREATE TABLE `cases` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `Naam` VARCHAR(100) NOT NULL,
    `Merk` VARCHAR(50) NOT NULL,
    `Form Factor` VARCHAR(50) NOT NULL,   
    `Color` VARCHAR(50) NOT NULL,
    `Has RGB` BOOLEAN NOT NULL,
    `Prijs` DECIMAL(10,2) NOT NULL,
    `image_url` VARCHAR(500)
);

CREATE TABLE `gebruikers` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `username` VARCHAR(100) NOT NULL,
    `password` VARCHAR(100) NOT NULL
);

INSERT INTO gebruikers (`username`, `password`) values ('bobby', 'password');

INSERT INTO `cpu` (`Naam`, `cores`, `platform`, `TDP`, `clock`, `prijs`, `graphics`, `architecture`, `Merk`, `image_url`) VALUES
('Intel Core i5-12400', 6, 'LGA1700', '65W', '2.5GHz', '189.99', 'UHD730', 'x86', 'Intel', 'foto/producten/product-015.png'),
('AMD Ryzen 5 5600X', 6, 'AM4', '65W', '3.7GHz', '179.99', NULL, 'x86', 'Amd', 'foto/producten/product-036.png'),
('Intel Core i7-13700K', 16, 'LGA1700', '125W', '3.4GHz', '409.99', 'UHD770', 'x86', 'Intel', 'foto/producten/product-049.png'),
('AMD Ryzen 9 7900X', 12, 'AM5', '170W', '4.7GHz', '429.99', 'Radeon', 'x86', 'Amd', 'foto/producten/r9-7900x.png'),
('Intel Core i3-13100', 4, 'LGA1700', '60W', '3.4GHz', '139.99', 'UHD730', 'x86', 'Intel', 'foto/producten/product-015.png'),
('AMD Ryzen 7 5800X', 8, 'AM4', '105W', '3.8GHz', '299.99', NULL, 'x86', 'Amd', 'foto/producten/r7-5800x.png'),
('Intel Core i9-13900K', 24, 'LGA1700', '125W', '3.0GHz', '589.99', 'UHD770', 'x86', 'Intel', 'foto/producten/product-049.png'),
('AMD Ryzen 5 7600', 6, 'AM5', '65W', '3.8GHz', '229.99', 'Radeon', 'x86', 'Amd', 'foto/producten/product-036.png'),
('Intel Core i5-13400F', 10, 'LGA1700', '65W', '2.5GHz', '209.99', NULL, 'x86', 'Intel', 'foto/producten/product-015.png'),
('AMD Ryzen 3 4100', 4, 'AM4', '65W', '3.8GHz', '99.99', NULL, 'x86', 'Amd', 'foto/producten/r3-4100.png');

INSERT INTO `gpu` (`Naam`, `Merk`, `Chipset`, `Vram GB`, `Base Clock`, `Boost Clock`, `TDP`, `Prijs`, `image_url`) VALUES
('NVIDIA GeForce RTX 3080', 'NVIDIA', 'Ampere', 10, 1440.00, 1710.00, 320, 699.99, 'foto/producten/rtx-3080.png'),
('AMD Radeon RX 6800 XT', 'AMD', 'RDNA 2', 16, 1825.00, 2250.00, 300, 649.99, 'foto/producten/Radeon-RX 6900-XT-16G.png'),
('NVIDIA GeForce RTX 3070', 'NVIDIA', 'Ampere', 8, 1500.00, 1730.00, 220, 499.99, 'foto/producten/rtx-3070.png'),
('AMD Radeon RX 6700 XT', 'AMD', 'RDNA 2', 12, 2321.00, 2581.00, 230, 479.99, 'foto/producten/product-046.png'),
('NVIDIA GeForce RTX 3060 Ti', 'NVIDIA', 'Ampere', 8, 1410.00, 1665.00, 200, 399.99, 'foto/producten/product-040.png'),
('AMD Radeon RX 6900 XT', 'AMD', 'RDNA 2', 16, 1825.00, 2250.00, 300, 999.99, 'foto/producten/Radeon-RX-6900 XT.png'),
('NVIDIA GeForce RTX 3050', 'NVIDIA', 'Ampere', 8, 1500.00, 1777.00, 130, 249.99, 'foto/producten/rtx-3050.png'),
('AMD Radeon RX 6600 XT', 'AMD', 'RDNA 2', 8, 1968.00, 2589.00, 160, 379.99, 'foto/producten/Radeon-RX 6900-XT-16G.png'),
('NVIDIA GeForce GTX 1660 Super', 'NVIDIA', 'Turing', 6, 1530.00, 1785.00, 125, 229.99, 'foto/producten/1660-super.png'),
('AMD Radeon RX 5500 XT', 'AMD', 'RDNA 1', 8, 1685.00, 1845.00, 130, 199.99, 'foto/producten/product-046.png');

INSERT INTO `ram` (`Naam`, `Merk`, `Capaciteit GB`, `Sticks`, `Speed Mhz`, `Type`, `Prijs`, `image_url`) VALUES
('Corsair Vengeance LPX', 'Corsair', 16, 2, 3200, 'DDR4', 79.99, 'foto/producten/product-013.png'),
('G.Skill Trident Z', 'G.Skill', 32, 2, 3600, 'DDR4', 159.99, 'foto/producten/product-035.png'),
('Kingston HyperX Fury', 'Kingston', 16, 2, 2666, 'DDR4', 69.99, 'foto/producten/E910_KINGSTON_40KIXXXX-10FI_02.png'),
('Crucial Ballistix', 'Crucial', 16, 2, 3000, 'DDR4', 74.99, 'foto/producten/product-021.png'),
('Patriot Viper 4', 'Patriot', 8, 1, 3200, 'DDR4', 39.99, 'foto/producten/product-007.png'),
('Team T-Force Delta', 'Team', 32, 4, 3200, 'DDR4', 149.99, 'foto/producten/delta-t-force-ram.png'),
('Corsair Dominator Platinum', 'Corsair', 64, 4, 3200, 'DDR4', 329.99, 'foto/producten/product-013.png'),
('G.Skill Ripjaws V', 'G.Skill', 16, 2, 3000, 'DDR4', 74.99, 'foto/producten/product-035.png'),
('Kingston HyperX Predator', 'Kingston', 16, 2, 3600, 'DDR4', 99.99, 'foto/producten/Kingston predator.png'),
('Crucial DDR4', 'Crucial', 8, 1, 2400, 'DDR4', 34.99, 'foto/producten/crucial-pro-16gb-ddr5-6000mhz-ram-824_opt.png');

INSERT INTO `storage` (`Naam`, `Merk`, `Type`, `Capaciteit GB`, `Interface`, `Prijs`, `image_url`) VALUES
('Samsung 970 EVO Plus', 'Samsung', 'SSD', 1000, 'NVMe', 149.99, 'foto/producten/product-003.png'),
('Western Digital Blue', 'WD', 'HDD', 2000, 'SATA', 54.99, 'foto/producten/product-059.png'),
('Crucial MX500', 'Crucial', 'SSD', 500, 'SATA', 64.99, 'foto/producten/product-044.png'),
('Seagate Barracuda', 'Seagate', 'HDD', 4000, 'SATA', 89.99, 'foto/producten/product-058.png'),
('Samsung 860 EVO', 'Samsung', 'SSD', 1000, 'SATA', 129.99, 'foto/producten/product-008.jpg'),
('Kingston A2000', 'Kingston', 'SSD', 1000, 'NVMe', 109.99, 'foto/producten/product-004.png'),
('Crucial P5', 'Crucial', 'SSD', 2000, 'NVMe', 229.99, 'foto/producten/product-053.png'),
('Western Digital Black', 'WD', 'SSD', 1000, 'NVMe', 199.99, 'foto/producten/WD BLACK.png'),
('Seagate FireCuda', 'Seagate', 'SSD', 2000, 'NVMe', 249.99, 'foto/producten/product-058.png'),
('Samsung 980 Pro', 'Samsung', 'SSD', 1000, 'NVMe', 179.99, 'foto/producten/product-003.png');

INSERT INTO `motherboard` (`Naam`, `Merk`, `Socket`, `Chipset`, `Form Factor`, `Ram Type`, `Max Ram`, `Prijs`, `image_url`) VALUES
('ASUS ROG Strix Z590-E', 'ASUS', 'LGA1200', 'Z590', 'ATX', 'DDR4', 128, 379.99, 'foto/producten/product-014.png'),
('MSI MAG B550 TOMAHAWK', 'MSI', 'AM4', 'B550', 'ATX', 'DDR4', 128, 179.99, 'foto/producten/product-011.png'),
('Gigabyte X570 AORUS Elite', 'Gigabyte', 'AM4', 'X570', 'ATX', 'DDR4', 128, 199.99, 'foto/producten/21100-gigabyte-motherboard.png'),
('ASRock B460M Pro4', 'ASRock', 'LGA1200', 'B460', 'Micro-ATX', 'DDR4', 128, 94.99, 'foto/producten/product-001.png'),
('MSI MPG Z490 Gaming Edge', 'MSI', 'LGA1200', 'Z490', 'ATX', 'DDR4', 128, 219.99, 'foto/producten/msi-mpg-z490.png'),
('ASUS TUF Gaming B550-PLUS', 'ASUS', 'AM4', 'B550', 'ATX', 'DDR4', 128, 159.99, 'foto/producten/product-010.png'),
('Gigabyte B460M DS3H', 'Gigabyte', 'LGA1200', 'B460', 'Micro-ATX', 'DDR4', 64, 89.99, 'foto/producten/product-009.png'),
('ASRock X570 Phantom Gaming', 'ASRock', 'AM4', 'X570', 'ATX', 'DDR4', 128, 249.99, 'foto/producten/product-001.png'),
('MSI B450 Tomahawk Max', 'MSI', 'AM4', 'B450', 'ATX', 'DDR4', 64, 114.99, 'foto/producten/product-011.png'),
('ASUS Prime Z390-A', 'ASUS', 'LGA1151', 'Z390', 'ATX', 'DDR4', 64, 189.99, 'foto/producten/product-045.png');

INSERT INTO `psu` (`Naam`, `Merk`, `Wattage`, `Efficieny Rating`, `modular`, `Prijs`, `image_url`) VALUES
('Corsair RM750x', 'Corsair', 750, '80+ Gold', TRUE, 129.99, 'foto/producten/product-056.png'),
('EVGA SuperNOVA 650 G5', 'EVGA', 650, '80+ Gold', TRUE, 119.99, 'foto/producten/product-016.png'),
('Seasonic Focus GX-550', 'Seasonic', 550, '80+ Gold', TRUE, 99.99, 'foto/producten/product-019.jpg'),
('Cooler Master MWE Gold 650', 'Cooler Master', 650, '80+ Gold', FALSE, 89.99, 'foto/producten/helios_p1a-750g_slogan-psu.png'),
('Corsair CX550M', 'Corsair', 550, '80+ Bronze', TRUE, 69.99, 'foto/producten/product-057.png'),
('Thermaltake Toughpower GF1 750W', 'Thermaltake', 750, '80+ Gold', TRUE, 109.99, 'foto/producten/product-018.png'),
('EVGA 500 W1', 'EVGA', 500, '80+ White', FALSE, 49.99, 'foto/producten/product-033.png'),
('Seasonic S12III 650', 'Seasonic', 650, '80+ Bronze', FALSE, 79.99, 'foto/producten/product-023.png'),
('Corsair HX1000i', 'Corsair', 1000, '80+ Platinum', TRUE, 229.99, 'foto/producten/rm1000e_2025.width-540-psu.png'),
('be quiet! Straight Power 11 750W', 'be quiet!', 750, '80+ Gold', TRUE, 139.99, 'foto/producten/tuf-1000w-psu.png');

INSERT INTO `coolers` (`Naam`, `Merk`, `Type`, `Fan RPM`, `Supported Sockets`, `Prijs`, `image_url`) VALUES
('Noctua NH-D15', 'Noctua', 'Air', 1500, 'LGA1200,LGA1151,AM4', 89.99, 'foto/producten/nh_d15_g2_11-improved-noctua.png'),
('Corsair H100i RGB Platinum', 'Corsair', 'Liquid', 2400, 'LGA1200,AM4', 159.99, 'foto/producten/product-048.png'),
('Cooler Master Hyper 212', 'Cooler Master', 'Air', 2000, 'LGA1151,AM4', 39.99, 'foto/producten/product-047.png'),
('NZXT Kraken X63', 'NZXT', 'Liquid', 2200, 'LGA1200,AM4', 149.99, 'foto/producten/product-042.png'),
('be quiet! Dark Rock Pro 4', 'be quiet!', 'Air', 1500, 'LGA1200,LGA1151,AM4', 89.99, 'foto/producten/product-050.png'),
('Deepcool Gammaxx 400', 'Deepcool', 'Air', 1800, 'LGA1151,AM4', 29.99, 'foto/producten/deepcool-gammaz-400.png'),
('Arctic Liquid Freezer II 280', 'Arctic', 'Liquid', 2100, 'LGA1200,AM4', 119.99, 'foto/producten/product-041.png'),
('Thermaltake Floe DX RGB', 'Thermaltake', 'Liquid', 2000, 'LGA1200,AM4', 139.99, 'foto/producten/product-030.png'),
('Scythe Mugen 5', 'Scythe', 'Air', 1500, 'LGA1200,AM4', 49.99, 'foto/producten/product-022.png'),
('Cooler Master MasterLiquid ML240L', 'Cooler Master', 'Liquid', 2400, 'LGA1200,AM4', 89.99, 'foto/producten/product-043.png');

INSERT INTO `cases` (`Naam`, `Merk`, `Form Factor`, `Color`, `Has RGB`, `Prijs`, `image_url`) VALUES
('NZXT H510', 'NZXT', 'ATX', 'Black', TRUE, 69.99, 'foto/producten/product-027.png'),
('Corsair 4000D Airflow', 'Corsair', 'ATX', 'White', TRUE, 79.99, 'foto/producten/product-034.png'),
('Fractal Design Meshify C', 'Fractal Design', 'ATX', 'Black', FALSE, 89.99, 'foto/producten/product-006.png'),
('Cooler Master MasterBox NR600', 'Cooler Master', 'ATX', 'Black', FALSE, 69.99, 'foto/producten/Cooler Master MasterBox NR600.png'),
('Lian Li PC-O11 Dynamic', 'Lian Li', 'ATX', 'Black', TRUE, 139.99, 'foto/producten/product-005.webp'),
('Phanteks Eclipse P400A', 'Phanteks', 'ATX', 'White', TRUE, 79.99, 'foto/producten/product-037.png'),
('be quiet! Pure Base 500DX', 'be quiet!', 'ATX', 'Black', TRUE, 99.99, 'foto/producten/be-quiet-Pure-Base-500DX.png'),
('Corsair Carbide Series 275R', 'Corsair', 'ATX', 'Black', TRUE, 59.99, 'foto/producten/Corsair Carbide Series 275R.png'),
('NZXT H710', 'NZXT', 'ATX', 'Black', TRUE, 169.99, 'foto/producten/product-027.png'),
('Thermaltake Versa H18', 'Thermaltake', 'Micro-ATX', 'Black', FALSE, 49.99, 'foto/producten/product-039.png');
