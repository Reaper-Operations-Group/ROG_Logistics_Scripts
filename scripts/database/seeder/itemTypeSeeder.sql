USE rogdb;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE itemtype;
SET FOREIGN_KEY_CHECKS = 1;


INSERT INTO itemtype (name)
VALUES 
('Uniform'), ('Vest'), ('Backpack'), ('Facewear'), ('NVG'), ('Headgear'), 
('Melee'), ('Misc'), ('Primary Weapon'), ('Secondary Weapon'), ('Launcher'), 
('Attachment'), ('Magazine');
# 1-Uniform, 2-Vest, 3-Backpack, 4-Facewear, 5-NVG, 6-Headgear
# 7-Melee, 8-Misc, 9-Primary Weapon, 10-Secondary Weapon, 11-Launcher
# 12-Attachment, 13-Magazine