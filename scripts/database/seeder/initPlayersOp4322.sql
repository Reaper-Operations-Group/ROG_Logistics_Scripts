USE rogdb;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE users;
TRUNCATE TABLE item;
TRUNCATE TABLE itemtype;
TRUNCATE TABLE lockeritem;
SET FOREIGN_KEY_CHECKS = 1;


INSERT INTO users (uid, username) 
VALUES 
(76561198102296716, 'M. "Jager" Kieran'), 
(76561198278988766, 'Ajax'), 
(76561198047902044, 'Azuki'),
(76561197983685912, 'Moose'),
(76561198167936647, 'B. Dutch');

INSERT INTO itemtype (name)
VALUES 
('Uniform'), ('Vest'), ('Backpack'), ('Facewear'), ('NVG'), ('Headgear'), 
('Melee'), ('Misc'), ('Primary Weapon'), ('Secondary Weapon'), ('Launcher'), 
('Attachment'), ('Magazine');
# 1-Uniform, 2-Vest, 3-Backpack, 4-Facewear, 5-NVG, 6-Headgear
# 7-Melee, 8-Misc, 9-Primary Weapon, 10-Secondary Weapon, 11-Launcher
# 12-Attachment, 13-Magazine

INSERT INTO item (typeid, name, classname, price, section)
VALUES
();

INSERT INTO lockeritem (uid, itemid)
VALUES
();
